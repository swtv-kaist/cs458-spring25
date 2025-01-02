# CS458 Clang API Documentation

## Testing the APIs yourself
If you want to test the below API functions yourselves, and see how they work, you can use the ```target.c```, ```testing.cpp```, ```Makefile``` files in the repository. To test the API functions:
 * Replace the code in the ```target.c``` file with the relevant target example given for each API
 * Replace the ```VisitStmt()``` in the testing.cpp file with the ```VisitStmt()``` given in each example (leave the ```VisitFunctionDecl()``` empty with ```return true```)
   * If you test the APIs regarding FunctionDecl, do the same as above but change the ```VisitFunctionDecl()``` instead of ```VisitStmt()``` and leave ```VisitStmt()``` empty with ```return true```.
 * Build the ```testing.cpp``` by running ```make``` command
 * Run the following command to execute the examples on the target code: ```./testing target.c```
 

## Clang APIs descriptions

This is a list of useful clang APIs for clang instrumentation homework. For more general info, check https://clang.llvm.org/doxygen.


- [Source Code Printing and Instrumentation](#source-code-printing-and-instrumentation)
  - [```string Stmt::getStmtClassName()```](#string-stmtgetstmtclassname)
  - [`void Stmt::printPretty(raw_ostream &OS, PrinterHelper *Helper, const PrintingPolicy &Policy)`](#void-stmtprintprettyraw_ostream-os-printerhelper-helper-const-printingpolicy-policy)
  - [```SourceLocation Stmt::getBeginLoc(), SourceLocation Stmt::getEndLoc()``` ](#sourcelocation-stmtgetbeginloc-sourcelocation-stmtgetendloc-)
  - [```SourceLocation getLParenLoc(), SourceLocation getRParenLoc()``` ](#sourcelocation-getlparenloc-sourcelocation-getrparenloc-)
  - [```bool SourceLocation::isValid()``` ](#bool-sourcelocationisvalid-)
  - [`SourceLocation Lexer::findLocationAfterToken(SourceLocation Loc, tok::TokenKind TKind, const SourceManager &SM, const LangOptions &LangOpts, bool SkipTrailingWhitespaceAndNewLine)`](#sourcelocation-lexerfindlocationaftertokensourcelocation-loc-toktokenkind-tkind-const-sourcemanager-sm-const-langoptions-langopts-bool-skiptrailingwhitespaceandnewline)
  - [```bool Rewriter::InsertTextBefore(SourceLocation Loc, string text)```](#bool-rewriterinserttextbeforesourcelocation-loc-string-text)
  - [```bool Rewriter::InsertTextAfter(SourceLocation Loc, string text)```](#bool-rewriterinserttextaftersourcelocation-loc-string-text)
- [Getting Information of Statements and Expressions](#getting-information-of-statements-and-expressions)
  - Loop and Conditional Statements
    - [```Expr* getCond()```](#expr-getcond)
    - [```Stmt* IfStmt::getThen()```](#stmt-ifstmtgetthen)
    - [```Stmt* IfStmt::getElse()```](#stmt-ifstmtgetelse)
    - [```Stmt* getBody()```](#stmt-getbody)
    - [```Stmt* SwitchCase::getSubStmt()```](#stmt-switchcasegetsubstmt)
    - [```SwitchCase* SwitchStmt::getSwitchCaseList(), SwitchCase* SwitchCase::getNextSwitchCase()```](#switchcase-switchstmtgetswitchcaselist-switchcase-switchcasegetnextswitchcase)
  - Class, Array and Pointer
    - [```Expr* MemberExpr::getBase()```](#expr-memberexprgetbase)
    - [```Expr* ArraySubscriptExpr::getBase()```](#expr-arraysubscriptexprgetbase)
    - [```DeclarationNameInfo* MemberExpr::getMemberNameInfo()```](#declarationnameinfo-memberexprgetmembernameinfo)
    - [```bool MemberExpr::isArrow()```](#bool-memberexprisarrow)
    - [```Expr* getSubExpr()```](#expr-getsubexpr)
  - Function
    - [```Stmt* FunctionDecl::getBody(), bool FunctionDecl::hasBody(), string FunctionDecl::getName()```](#stmt-functiondeclgetbody-bool-functiondeclhasbody-string-functiondeclgetname)
    - [```bool FunctionDecl::isMain()```](#bool-functiondeclismain)
- [Type Checking and Casting](#type-checking-and-casting)
  - [```bool isa<StmtType>(Stmt *stmt), bool isa<ExprType>(Stmt *stmt)```](#bool-isastmttypestmt-stmt-bool-isaexprtypestmt-stmt)
  - [```ExprType* dyn_cast<ExprType>(Stmt *stmt)```](#exprtype-dyn_castexprtypestmt-stmt)
  - [```QualType Expr::getType()```](#qualtype-exprgettype)
  
- Etc.
  - HandleTopLevelDecl
  - InsertTextAfter
  - InsertTextAfterToken
  - InsertTextBefore
  - TraverseDecl
  - VisitFunctionDecl
  - VisitStmt
  - dyn_cast  
  - exprToStr
  - getASTContext
  - getAsFunction  // FunctionDecl *f = (*b)->getAsFunction();
  - getColonLoc
  - getEditBuffer
  - getFalseExpr
  - getFile
  - getImmediateMacroCallerLoc
  - getInit
  - getLocForEndOfToken
  - getMainFileID
  - getPreprocessor
  - getSourceManager 
  - getSourceMgr  
  - getTrueExpr
  - isMacroID
  

## Source Code Printing and Instrumentation
_________
### ```string Stmt::getStmtClassName()```
_________
Obtains a name of a statment class (e.g., ```"IfStmt"```, ```"WhileStmt"```, ```"SwitchStmt"```).

Example:
```C++
bool VisitStmt(Stmt *stmt) {
        auto stmtName = stmt->getStmtClassName();
        llvm::outs() << stmtName << "\n";
        return true;
}
```
If we execute the above example on the code below:
```c
int main() {
  int a = 5;
  if (a > 3) {
    a += 1;
  }
  return 0;
}
```
The output will be:
```
CompoundStmt
DeclStmt
IntegerLiteral
IfStmt
BinaryOperator
ImplicitCastExpr
DeclRefExpr
IntegerLiteral
CompoundStmt
CompoundAssignOperator
DeclRefExpr
IntegerLiteral
ReturnStmt
IntegerLiteral
```

________
### `void Stmt::printPretty(raw_ostream &OS, PrinterHelper *Helper, const PrintingPolicy &Policy)`
________

Prints the statement/expression as it is.

Example:
```C++
bool VisitStmt(Stmt *stmt) {
        std::string str1;
        llvm::raw_string_ostream os(str1);
        stmt->printPretty(os, NULL, LangOpts);
        llvm::outs() << os.str();
        return true;
}
```
If we execute the above example for the code below with a parameter ```*stmt``` that points to the ```if``` statement:
```c
int main() {
  int a = 5;
  int b = 4;
  if (a > b) {
    a += 1;
  }
  else {
    a -= 1;
  }
  return 0;
}
```

The output will be:
```
if (a > b) {
    a += 1;
} else {
    a -= 1;
}
```
_________

### ```SourceLocation Stmt::getBeginLoc(), SourceLocation Stmt::getEndLoc()``` <a name="api3"></a>
_________
Get ```SourceLocation``` object that points to the beginning or the end of a given statement. To get the line and column information, use the following functions:
- `SourceManager::getExpansionLineNumber(SourceLocation loc)`
- `SourceManager::getExpansionColumnNumber(SourceLocation loc)`

Example:
```C++
bool VisitStmt(Stmt *stmt) {
        SourceLocation startLocation = stmt->getBeginLoc();
        unsigned int lineNum = m_sourceManager.getExpansionLineNumber(startLocation);
        unsigned int columnNum = m_sourceManager.getExpansionColumnNumber(startLocation);

        SourceLocation endLocation = stmt->getEndLoc();
        unsigned int lineNumEnd = m_sourceManager.getExpansionLineNumber(endLocation);
        unsigned int columnNumEnd = m_sourceManager.getExpansionColumnNumber(endLocation);

        llvm::outs() << lineNum << ", " << columnNum << "\n";
        llvm::outs() << lineNumEnd << ", " << columnNumEnd << "\n";
        return true;
}
```

If we execute the above example on the code below, when ```*stmt``` points to the if statement/block:
```c
int main() {
  int a = 5;
  if (a > 3) {
    a += 1;
  }
  return 0;
}
```
The output will be:
```
3, 3
6, 3
```
_________
### ```SourceLocation getLParenLoc(), SourceLocation getRParenLoc()``` <a name="api8"></a>
_________
Return the location of the left and right paranthese if the statement has it. They can be used for IfStmt, ForStmt and so on (not  applicable to all types of statements). 

Example:
```C++
bool VisitStmt(Stmt *stmt) {
        if(isa<IfStmt>(stmt)){
            auto ifStmt = dyn_cast<IfStmt>(stmt);
            SourceLocation startLocation = ifStmt->getLParenLoc();
            unsigned int lineNum = m_sourceManager.getExpansionLineNumber(startLocation);
            unsigned int columnNum = m_sourceManager.getExpansionColumnNumber(startLocation);

            SourceLocation endLocation = ifStmt->getRParenLoc();
            unsigned int lineNumEnd = m_sourceManager.getExpansionLineNumber(endLocation);
            unsigned int columnNumEnd = m_sourceManager.getExpansionColumnNumber(endLocation);
            llvm::outs() << lineNum << ", " << columnNum << "\n" << lineNumEnd << ", " << columnNumEnd << "\n";
        }
        return true;
}
```
if we execute the above example on the code below:
```c
int main() {
  int a = 5;
  if (
    a > 4
  ){
    a += 1;
  }
  return 0;
}
```
The output will be:
```
4, 6
6, 3
```
_________
### ```bool SourceLocation::isValid()``` <a name="api17"></a>
_________
Returns true if a given ```SourceLocation``` object is valid. 

Example:
```C++
bool VisitStmt(Stmt *stmt) {
        SourceLocation loc = stmt->getBeginLoc();
        if (loc.isValid()){
          llvm::outs() << "Got valid SourceLocation object\n";
        }
        else{
          llvm::outs() << "Invalid SourceLocation\n";
        }
        return true;
}
```

If we execute the above example on the code below:
```c
int main() {
  int a = 5;
  int b = 10;
  return 0;
}
```
The output will be:
```
Got valid SourceLocation object
Got valid SourceLocation object
Got valid SourceLocation object
Got valid SourceLocation object
Got valid SourceLocation object
Got valid SourceLocation object
Got valid SourceLocation object
```

_________
### `SourceLocation Lexer::findLocationAfterToken(SourceLocation Loc, tok::TokenKind TKind, const SourceManager &SM, const LangOptions &LangOpts, bool SkipTrailingWhitespaceAndNewLine)`
________

Returns the location immediately after the specified token, if the token is right after the given location.  

Example:
```C++
bool VisitStmt(Stmt *stmt) {
        tok::TokenKind tokenKind = clang::tok::semi;
        unsigned int lineNum = m_sourceManager.getExpansionLineNumber(stmt->getBeginLoc());
        unsigned int columnNum = m_sourceManager.getExpansionColumnNumber(stmt->getBeginLoc());
        llvm::outs() << lineNum << ", " << columnNum << "\n";
        SourceLocation next_after_loc = clang::Lexer::findLocationAfterToken(stmt->getBeginLoc(), tokenKind, m_sourceManager, LangOpts, false);
        if (next_after_loc.isInvalid()){
          llvm::outs() << "Invalid SourceLocation\n";
        }
        else{
          lineNum = m_sourceManager.getExpansionLineNumber(next_after_loc);
          columnNum = m_sourceManager.getExpansionColumnNumber(next_after_loc);
          llvm::outs() << lineNum << ", " << columnNum << "\n\n\n";
        }
        return true;
}
```
If we execute the above example on the code below:
```c
int main() {
  int a = 5;
  return 0;
}
```
The output will be:
```
1, 12 -> Beginning of the main function, the opening bracket of the function, next token is not semicolon, return Invalid SourceLocation
Invalid SourceLocation


2, 3 -> Beginning of the variable declaration, next token is not semicolon, return Invalid SourceLocation
Invalid SourceLocation


2, 11 -> The integer literal at line 2, column 11 (5), next token is semicolon, return the SourceLocation right after semicolon
2, 13


3, 3 -> Beginning of the return statement, next token is not semicolon, return Invalid SourceLocation
Invalid SourceLocation


3, 10 -> The integer literal at line 3, column 10 (0) next token is semicolon, return the SourceLocation right after semicolon
3, 12
```
_________

### ```bool Rewriter::InsertTextBefore(SourceLocation Loc, string text)```
### ```bool Rewriter::InsertTextAfter(SourceLocation Loc, string text)```
_________
Modify a target source code.  

Example:
```C++
bool VisitStmt(Stmt *stmt) {
        if (isa<IfStmt>(stmt)){
            IfStmt * ifStmt = dyn_cast<IfStmt>(stmt);
            TheRewriter.InsertTextBefore(ifStmt->getBeginLoc(), "/*Before if statement*/\n  ");
            TheRewriter.InsertTextAfter(ifStmt->getEndLoc().getLocWithOffset(1), "\n  /*After if statement*/\n");
        }
        return true;
}
```
If we execute the above example on the code below:
```c
int main() {
  int a = 5;
  if (a > 5){
    a += 1;
  }
  else{
    a -= 1;
  }
  return 0;
}
```
The output file will be:
```c
int main() {
  int a = 5;
  /*Before if statement*/
  if (a > 5){
    a += 1;
  }
  else{
    a -= 1;
  }
  /*After if statement*/

  return 0;
}
```
Note: ```getEndLoc()``` function points to the token right before the end of the statement/expression. If we use it as it is in the above example "After if statement" comment will actually be before the closing bracket of the else statement. Thus, we use the ```getLocWithOffset()``` function to obtain the desired location. ```getLocWithOffset()``` function moves the current location by the amount provided to the function. Negative argument will go backwards and positive arguments will go forward.  

## Getting Information of Statements and Expressions

_________
### ```Expr* getCond()```
_________
Obtains the conditional expression in statements such as If, For and etc. 

Example:
```C++
bool VisitStmt(Stmt *stmt) {
        if(isa<WhileStmt>(stmt)){
            auto whileStmt = dyn_cast<WhileStmt>(stmt);
            Expr * cond= whileStmt->getCond();

            std::string str1;
            llvm::raw_string_ostream os(str1);
            cond->printPretty(os, NULL, LangOpts);
            llvm::outs() << os.str() << "\n";
        }
        return true;
}
```
If we execute the above example on the code below:
```c
int main() {
  int a = 5;
  while (a < 10){
    a += 1;
  }
  return 0;
}
```
The output will be:
```
a < 10
```
_________
### ```Stmt* IfStmt::getThen()```
### ```Stmt* IfStmt::getElse()```
_________
Obtains then and else part of the if condition. 

Example:
```C++
bool VisitStmt(Stmt *stmt) {
        if(isa<IfStmt>(stmt)){
            auto ifStmt = dyn_cast<IfStmt>(stmt);
            Expr* cond = ifStmt->getCond();
            Stmt* then = ifStmt->getThen();
            Stmt* elseS = ifStmt->getElse();

            std::string cond_str;
            llvm::raw_string_ostream os(cond_str);
            cond->printPretty(os, NULL, LangOpts);
            llvm::outs() << os.str() << "\n\n";

            std::string then_str;
            llvm::raw_string_ostream os1(then_str);
            then->printPretty(os1, NULL, LangOpts);
            llvm::outs() << os1.str() << "\n\n";

            std::string else_str;
            llvm::raw_string_ostream os2(else_str);
            elseS->printPretty(os2, NULL, LangOpts);
            llvm::outs() << os2.str() << "\n\n";
        }
        return true;
}
```
If we execute the above example on the code below and apply ```printPretty``` to them:
```c
int main() {
  int a = 5;
  int b = 6;
  if (a > 4){
    a += 1;
    b -= 1;
  }else{
    a -= 1;
    b += 1;
  }
  return 0;
}
```
The output will be:
```
a > 4

{
    a += 1;
    b -= 1;
}


{
    a -= 1;
    b += 1;
}
```
_________

### ```Stmt* getBody()```
_________
Obtains the body of a given statement. Can be applied to loops and functions.  

Example:
```C++
bool VisitStmt(Stmt *stmt) {
        if (isa<ForStmt>(stmt)){
            ForStmt * forStmt = dyn_cast<ForStmt>(stmt);
            Stmt* body = forStmt->getBody();

            std::string body_str;
            llvm::raw_string_ostream os(body_str);
            body->printPretty(os, NULL, LangOpts);
            llvm::outs() << os.str() << "\n\n";
        }
        return true;
}
```
If we execute the above example on the code below:
```c
int main() {
  int a = 5;
  int b = 10;
  int i;
  for (i = 0; i < 10; i++){
    a += 1;
    b += 2;
  }
  
  return 0;
}
```
The output will be:
```
{
    a += 1;
    b += 2;
}
```

_________

### ```Stmt* SwitchCase::getSubStmt()```
_________
Gets the statement block that corresponds to the switch case. 

Example:
```C++
bool VisitStmt(Stmt *stmt) {
        if (isa<SwitchCase>(stmt)) {
            SwitchCase *switchCase = cast<SwitchCase>(stmt);
            auto subStmtm = switchCase->getSubStmt();
            
            std::string case_block_str;
            llvm::raw_string_ostream os(case_block_str);
            subStmtm->printPretty(os, NULL, LangOpts);
            llvm::outs() << os.str() << "\n\n";
        }
        return true;
}
```
If we execute the above example on the code below:
```c
int main() {
  int a = 4;
  
  switch(a){
    case 1: a += 1;
    case 2: a *= 2;
    case 3: a -= 3;
    default: a = 0;
  };

  return 0;
}
```
The output will be:
```
a += 1

a *= 2

a -= 3

a = 0
```
_________

### ```SwitchCase* SwitchStmt::getSwitchCaseList(), SwitchCase* SwitchCase::getNextSwitchCase()```
_________
Iterates through the cases of the switch statement. 

Example:
```C++
bool VisitStmt(Stmt *stmt) {
        if (isa<SwitchStmt>(stmt)) {
            auto switchStmt = cast<SwitchStmt>(stmt);
            auto switchCase = switchStmt->getSwitchCaseList();
            
            while (switchCase){
                std::string case_str;
                llvm::raw_string_ostream os(case_str);
                switchCase->printPretty(os, NULL, LangOpts);
                llvm::outs() << os.str() << "\n\n";
                switchCase = switchCase->getNextSwitchCase();
            }

        }
        return true;
}
```
If we execute the above example on the code below:
```c
int main() {
  int a = 4;
  
  switch(a){
    case 1: a += 1;
    case 2: a *= 2;
    case 3: a -= 3;
    default: a = 0;
  };

  return 0;
}
```
The output will be:
```
default:
a = 0;


case 3:
a -= 3;


case 2:
a *= 2;


case 1:
a += 1;
```

_________
### ```Expr* MemberExpr::getBase()```
### ```Expr* ArraySubscriptExpr::getBase()```
_________
Obtains base expression if the target expression is MemberExpr, ArraySubscriptExpr. 

Example:
```C++
bool VisitStmt(Stmt *stmt) {
        if (isa<MemberExpr>(stmt)){
            MemberExpr* expr = dyn_cast<MemberExpr>(stmt);
            auto t = expr->getType().getAsString();
            auto t_base = expr->getBase()->getType().getAsString();

            llvm::outs() << t << "\n";
            llvm::outs() << t_base << "\n";
        }
        return true;
}
```
If we execute the above example on the code below:
```c
struct a {
  int b;
};

int main() {
  struct a * aptr;
  aptr->b = 5;
  return 0;
}
```
The output will be (```expr->getBase()``` points to ```aptr```):
```
int
struct a *
```

_________

### ```DeclarationNameInfo* MemberExpr::getMemberNameInfo()```
_________
Obtains information about the member variable. 

Example:
```C++
bool VisitStmt(Stmt *stmt) {
        if (isa<MemberExpr>(stmt)){
            MemberExpr * memexpr = dyn_cast<MemberExpr>(stmt);
            auto memberName = memexpr->getMemberNameInfo();
            llvm::outs() << memberName << "\n";
        }
        return true;
}
```
If we execute the above example on the code below:
```c
struct a {
  int myCustomVariable;
};

int main() {
  struct a aptr1 = {.myCustomVariable=3};
  aptr1.myCustomVariable = 5;
  return 0;
}
```
The output will be:
```
myCustomVariable
```
_________

### ```bool MemberExpr::isArrow()```
_________
To learn whether the member access is arrow or dot access. 

Example:
```C++
bool VisitStmt(Stmt *stmt) {
        if (isa<MemberExpr>(stmt)){
            MemberExpr * memexpr = dyn_cast<MemberExpr>(stmt);
            if(memexpr->isArrow()){
                llvm::outs() << "We got the memeber access with arrow\n";
            }
            else{
                llvm::outs() << "We got the member access with dot\n";
            }
        }
        return true;
}
```
If we execute the above example on the code below:
```c
struct a {
  int myCustomVariable;
};

int main() {

  struct a aptr1 = {.myCustomVariable=3};
  aptr1.myCustomVariable = 5;

  struct a* aptr = &aptr1;
  aptr->myCustomVariable = 5;
  return 0;
}
```
The output will be:
```
We got the member access with dot
We got the memeber access with arrow
```

_________
### ```Expr* getSubExpr()```
_________
This base expression used in the dereferencing expression, such as ```*pointer``` -> ```getSubExpr``` will give you ```pointer```. 

Example:  
```C++
bool VisitStmt(Stmt *stmt) {
        if (isa<UnaryOperator>(stmt)) {
            UnaryOperator * unaryexpr = dyn_cast<UnaryOperator>(stmt);

            if (unaryexpr->getOpcode() == UnaryOperatorKind::UO_Deref) {
                
                std::string expr_str;
                llvm::raw_string_ostream os1(expr_str);
                expr_str->printPretty(os1, NULL, LangOpts);
                llvm::outs() << os1.str() << "\n\n";

                Expr * subexpr = unaryexpr->getSubExpr();
                std::string pointer_str;
                llvm::raw_string_ostream os(pointer_str);
                subexpr->printPretty(os, NULL, LangOpts);
                llvm::outs() << os.str() << "\n\n";
            }
        }
        return true;
}
```
if we execute the above example on the code below:
```c

int main() {
  int a = 4;
  int* pointer = &a;
  *pointer = 5;
  return 0;
}
```
The output will be:
```
*pointer

pointer
```

_________
### ```Stmt* FunctionDecl::getBody(), bool FunctionDecl::hasBody(), string FunctionDecl::getName()```
_________
These functions can be used to obtain information about the given function. 

Example:
```C++
bool VisitFunctionDecl(FunctionDecl *f) {
        
        if (f->hasBody()) {
            Stmt *FuncBody = f->getBody();
            std::string body_str;
            llvm::raw_string_ostream os(body_str);
            FuncBody->printPretty(os, NULL, LangOpts);
            llvm::outs() << f->getName() << "\n";
            llvm::outs() << os.str() << "\n\n";
        }
        
        return true;
    }
```
If we execute the above example on the code below:
```c
int customFunc(){
  int b = 1;
  int a = 2;
  return a + b;
}

int main() {
  int a = 5;
  int b = 10;
  return 0;
}
```
The output will be:
```
customFunc
{
    int b = 1;
    int a = 2;
    return a + b;
}


main
{
    int a = 5;
    int b = 10;
    return 0;
}
```
_________
### ```bool FunctionDecl::isMain()```
_________
Checks whether the current function is main. 

Example:
```C++
bool VisitFunctionDecl(FunctionDecl *f) {
        
        if (f->isMain()) {
            llvm::outs() << "Got the main function" << "\n";
        }
        else {
            llvm::outs() << "Not the main function\n";
        }
        
        return true;
    }
```
If we execute the above example on the code below:
```c
int customFunc(){
  int b = 1;
  int a = 2;
  return a + b;
}

int main() {
  int a = 5;
  int b = 10;
  return 0;
}
```
The output will be:
```
Not the main function
Got the main function
```

## Type Checking and Casting

_________

### ```bool isa<StmtType>(Stmt *stmt), bool isa<ExprType>(Stmt *stmt)```
_________
Obtains the information about the type of the statement or expression, such as IfStmt, WhileStmt. 

Example:  
```C++
bool VisitStmt(Stmt *stmt) {
        if (isa<IfStmt>(stmt)){
            llvm::outs() << "You have reached if statement\n";
        }

        if (isa<ArraySubscriptExpr>(stmt)){
            llvm::outs() << "You have reached array subscript expression\n";
        }
        return true;
}
```
If we execute the above example on the code below:
```c
int main() {

  int a = 5;
  if (a > 3) {
    a += 1;
  }

  if (a < 6){
    a -= 1;
  }
  else{
    a += 1;
  }

  int intarr[10][10];

  *intarr[1] = 42;
  return 0;
}
```
The output will be:
```
You have reached if statement
You have reached if statement
You have reached array subscript expression
```
_________

### ```ExprType* dyn_cast<ExprType>(Stmt *stmt)```
_________
Casts a statement to an inherited statement type, such as ```Stmt*``` -> ```IfStmt*```. This can also be applied to cast Stmt to underlying expression such as, ```Stmt*``` -> ```MemberExpr*```. 

Example:
```C++
bool VisitStmt(Stmt *stmt) {
        if(isa<WhileStmt>(stmt)){
            Expr* cond = stmt->getCond();
        }
        return true;
}
```
If we try to execute the above code, there will be an compilation error because clang::Stmt does not have a member function called ```getCond()```. Correct usage would be like below:
```C++
bool VisitStmt(Stmt *stmt) {
        if(isa<WhileStmt>(stmt)){
            auto whileStmt = dyn_cast<WhileStmt>(stmt);
            Expr * cond= whileStmt->getCond();
        }
        return true;
}
```
_________
### ```QualType Expr::getType()```
_________
Obtains type of the given object. Use ```getAsString()``` function to obtain type in string form. Not applicable to ```Stmt``` objects. 

Example:
```C++
bool VisitStmt(Stmt *stmt) {
        if (isa<ArraySubscriptExpr>(stmt)){
            ArraySubscriptExpr* expr = dyn_cast<ArraySubscriptExpr>(stmt);
            auto t = expr->getType().getAsString();
            auto t_base = expr->getBase()->getType().getAsString();

            llvm::outs() << t << "\n";
            llvm::outs() << t_base << "\n";
        }
        return true;
}
```
If we execute the above example on the code below:
```c
int main() {
  int intarr[10];
  intarr[1] = 42;
  return 0;
}
```
The output will be (```expr``` variable points to the whole expression ```intarr[1]``` which is integer, whereas ```expr->getBase()``` points to ```intarr```):
```
int
int *
```


