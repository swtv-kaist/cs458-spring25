# Target file name which uses clang library
# $(TARGET_CXX) will be compiled and $(TARGET) will be executable file name

all: testing
	
.PHONY: all

ifeq (, $(shell which llvm-config))
$(error "No llvm-config in $$PATH")
endif

LLVM_VER  = $(shell llvm-config --version 2>/dev/null | sed 's/git//' | sed 's/svn//' )
LLVM_MAJOR = $(shell llvm-config --version 2>/dev/null | sed 's/\..*//' )
$(info Using LLVM version : $(LLVM_VER))

CXX=g++
CXXFLAGS=-fno-rtti -O0 -g -DLLVM_MAJOR=$(LLVM_MAJOR)
CC=gcc
CFLAGS=-O0 -g -DLLVM_MAJOR=$(LLVM_MAJOR)
SYSTEMLIBS=-lrt -lm -ldl -lpthread -Wl,-Bstatic -ltinfo -lz
LDFLAGS=-L. -static-libstdc++ $(SYSTEMLIBS)
LDFLAGS_C=-L. 

LLVM_CXXFLAGS=`llvm-config --cxxflags`
LLVM_LDFLAGS=`llvm-config --ldflags --libs --link-static`

CLANG_LIBS=-Wl,--start-group \
	-lclangAST \
	-lclangASTMatchers \
	-lclangAnalysis \
	-lclangBasic \
	-lclangDriver \
	-lclangEdit \
	-lclangFrontend \
	-lclangFrontendTool \
	-lclangLex \
	-lclangParse \
	-lclangSema \
	-lclangEdit \
	-lclangRewrite \
	-lclangRewriteFrontend \
	-lclangStaticAnalyzerFrontend \
	-lclangStaticAnalyzerCheckers \
	-lclangStaticAnalyzerCore \
	-lclangSerialization \
	-lclangToolingCore \
	-lclangTooling \
	-lclangFormat \
	-Wl,--end-group

testing: testing.cpp
	$(CXX) $(CXXFLAGS) $(LLVM_CXXFLAGS) $^ $(CLANG_LIBS) $(LLVM_LDFLAGS) $(LDFLAGS) -o $@

clean:
	rm -rf *.o *.ll testing