#include <cstdio>
#include <string>
#include <iostream>
#include <sstream>
#include <fstream>

#include <map>
#include <utility>
#include <set>

#include "clang/AST/ASTConsumer.h"
#include "clang/AST/RecursiveASTVisitor.h"
#include "clang/Basic/Diagnostic.h"
#include "clang/Basic/FileManager.h"
#include "clang/Basic/SourceManager.h"
#include "clang/Basic/TargetOptions.h"
#include "clang/Basic/TargetInfo.h"
#include "clang/Frontend/CompilerInstance.h"
#include "clang/Lex/Preprocessor.h"
#include "clang/Parse/ParseAST.h"
#include "clang/Rewrite/Core/Rewriter.h"
#include "clang/Rewrite/Frontend/Rewriters.h"
#include "llvm/Support/Host.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/ADT/IntrusiveRefCntPtr.h"
#include "clang/Lex/HeaderSearch.h"
#include "clang/Frontend/Utils.h"

using namespace clang;
using namespace std;


class MyASTVisitor : public RecursiveASTVisitor<MyASTVisitor>
{
public:
    MyASTVisitor(Rewriter &R, const LangOptions &langOptions, SourceManager &sourceManager)
        : TheRewriter(R), LangOpts(langOptions), m_sourceManager(sourceManager)
    {}


    bool VisitStmt(Stmt *stmt) {
        auto stmtName = stmt->getStmtClassName();
        llvm::outs() << stmtName << "\n";
        return true;
    }
    bool VisitFunctionDecl(FunctionDecl *f) {
        return true;        
    }

private:
    Rewriter &TheRewriter;
    const LangOptions &LangOpts;
    SourceManager &m_sourceManager;

};

class MyASTConsumer : public ASTConsumer
{
public:
    MyASTConsumer(Rewriter &R, const LangOptions &langOptions, SourceManager &sourceManager)
        : Visitor(R, langOptions, sourceManager) //initialize MyASTVisitor
    {}

    virtual bool HandleTopLevelDecl(DeclGroupRef DR) {
        for (DeclGroupRef::iterator b = DR.begin(), e = DR.end(); b != e; ++b) {
            // Travel each function declaration using MyASTVisitor
            Visitor.TraverseDecl(*b);
        }
        return true;
    }

private:
    MyASTVisitor Visitor;
};


int main(int argc, char *argv[])
{
    if (argc != 2) {
        llvm::errs() << "Usage: kcov-branch-identify <filename>\n";
        return 1;
    }

    // CompilerInstance will hold the instance of the Clang compiler for us,
    // managing the various objects needed to run the compiler.
    CompilerInstance TheCompInst;
    
    // Diagnostics manage problems and issues in compile 
    TheCompInst.createDiagnostics(NULL, false);

    // Set target platform options 
    // Initialize target info with the default triple for our platform.
    auto TO = std::make_shared<TargetOptions>();
    TO->Triple = llvm::sys::getDefaultTargetTriple();
    TargetInfo *TI = TargetInfo::CreateTargetInfo(TheCompInst.getDiagnostics(), TO);
    TheCompInst.setTarget(TI);

    // FileManager supports for file system lookup, file system caching, and directory search management.
    TheCompInst.createFileManager();
    FileManager &FileMgr = TheCompInst.getFileManager();
    
    // SourceManager handles loading and caching of source files into memory.
    TheCompInst.createSourceManager(FileMgr);
    SourceManager &SourceMgr = TheCompInst.getSourceManager();
    
    // Prreprocessor runs within a single source file
    TheCompInst.createPreprocessor(TU_Module);

    // Add HeaderSearch Path
    Preprocessor &PP = TheCompInst.getPreprocessor();
    const llvm::Triple &HeaderSearchTriple = PP.getTargetInfo().getTriple();
    
    HeaderSearchOptions &hso = TheCompInst.getHeaderSearchOpts();

    // <Warning!!> -- Platform Specific Code lives here
    // This depends on A) that you're running linux and
    // B) that you have the same GCC LIBs installed that I do.
    /*
    $ gcc -xc -E -v -
    ..
      /usr/lib/gcc/x86_64-linux-gnu/4.9/include
      /usr/local/include
      /usr/lib/gcc/x86_64-linux-gnu/4.9/include-fixed
      /usr/include/x86_64-linux-gnu
      /usr/include
    End of search list.
    */
    const char *include_paths[] = {"/usr/local/include",
        "/usr/include/x86_64-linux-gnu",
        "/usr/lib/gcc/x86_64-linux-gnu/7/include",
        "/usr/include"};
    
    for (int i = 0; i < (sizeof(include_paths) / sizeof(include_paths[0])); i++) {
        hso.AddPath(include_paths[i], clang::frontend::Angled, false, false);
    }
    // </Warning!!> -- End of Platform Specific Code

    ApplyHeaderSearchOptions(PP.getHeaderSearchInfo(), hso,
                             PP.getLangOpts(), HeaderSearchTriple);
    
    // ASTContext holds long-lived AST nodes (such as types and decls) .
    TheCompInst.createASTContext();

    // A Rewriter helps us manage the code rewriting task.
    Rewriter TheRewriter;
    TheRewriter.setSourceMgr(SourceMgr, TheCompInst.getLangOpts());

    // Set the main file handled by the source manager to the input file.
    auto expect_filein = FileMgr.getFile(argv[1]);
    if (error_code ec = expect_filein.getError()) {
        llvm::errs() << "Error: " << ec.message() << '\n';
        return 1;
    }
    const FileEntry *FileIn = expect_filein.get();
    SourceMgr.setMainFileID(SourceMgr.createFileID(FileIn, SourceLocation(), SrcMgr::C_User));
    
    // Inform Diagnostics that processing of a source file is beginning. 
    TheCompInst.getDiagnosticClient().BeginSourceFile(TheCompInst.getLangOpts(),&TheCompInst.getPreprocessor());
    
    // Create an AST consumer instance which is going to get called by ParseAST.
    MyASTConsumer TheConsumer(TheRewriter, TheCompInst.getLangOpts(), SourceMgr);

    // Parse the file to AST, registering our consumer as the AST consumer.
    ParseAST(TheCompInst.getPreprocessor(), &TheConsumer, TheCompInst.getASTContext());

    // map<std::string, std::string>::iterator it;
    // for (it = final_set.begin(); it != final_set.end(); it++) {
    //     llvm::outs() << it->first << ": " << it->second << "\n";
    // }
    const RewriteBuffer *RewriteBuf = TheRewriter.getRewriteBufferFor(SourceMgr.getMainFileID());
	if (RewriteBuf && TheRewriter.buffer_begin() != TheRewriter.buffer_end()) {
		char o_file[1024]={0};
		strncpy(o_file, argv[1], strlen(argv[1])-2);
		strcpy(o_file+strlen(o_file), "-cov.c");
		ofstream output(o_file);
		output << string(RewriteBuf->begin(), RewriteBuf->end());
		output.close();
	}
    return 0;
}
