# 1 "./limit2-sym-ptr.cil.c"
# 1 "/mnt/c/Dropbox/classes/CS492A-Fall18/3-crown/code-examples/examples//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./limit2-sym-ptr.cil.c"
# 5 "limit2-sym-ptr.c"
void __globinit_limit2_sym_ptr(void) ;
extern void __CrownInit(int id ) __attribute__((__crown_skip__)) ;
extern void __CrownCheckSymbolic(int id , char *fname ) __attribute__((__crown_skip__)) ;
extern void __CrownEnableSymbolic(int id , char *fname ) __attribute__((__crown_skip__)) ;
extern void __CrownSetCallerCalleeName(int id , char *fname , char *fname2 ) __attribute__((__crown_skip__)) ;
extern void __CrownHandleReturn(int id , int type , long long val , double fp_val ) __attribute__((__crown_skip__)) ;
extern void __CrownReturn(int id ) __attribute__((__crown_skip__)) ;
extern void __CrownCall(int id , unsigned int fid ) __attribute__((__crown_skip__)) ;
extern void __CrownBranch(int id , int bid , unsigned char b , int line , char *fname ) __attribute__((__crown_skip__)) ;
extern void __CrownApply2(int id , int op , int type , long long val , double fp_val ) __attribute__((__crown_skip__)) ;
extern void __CrownApply1(int id , int op , int type , long long val , double fp_val ) __attribute__((__crown_skip__)) ;
extern void __CrownClearStack(int id ) __attribute__((__crown_skip__)) ;
extern void __CrownStore(int id , unsigned long addr ) __attribute__((__crown_skip__)) ;
extern void __CrownLoad(int id , unsigned long addr , int type , long long val , double fp_val ) __attribute__((__crown_skip__)) ;
# 362 "/usr/include/stdio.h"
extern int printf(char const * __restrict __format , ...) ;
# 5 "limit2-sym-ptr.c"
int main(void)
{
  int x ;
  int y ;
  int *ptr ;
  int __retres4 ;

  {
  __globinit_limit2_sym_ptr();
  __CrownCheckSymbolic(3, "main");
  __CrownCall(2, 1);
  __CrownClearStack(1);
  __CrownLoad(4, (unsigned long )0, 5, (long long )1, (double )1);
  __CrownStore(5, (unsigned long )(& x));
# 6 "limit2-sym-ptr.c"
  x = 1;
  __CrownLoad(6, (unsigned long )0, 5, (long long )2, (double )2);
  __CrownStore(7, (unsigned long )(& y));
# 6 "limit2-sym-ptr.c"
  y = 2;
  __CrownLoad(12, (unsigned long )(& ptr), 6, (long long )ptr, 8);
  __CrownApply1(11, 27, 6, (long long )((unsigned long )ptr), (double )((unsigned long )ptr));
  __CrownLoad(10, (unsigned long )0, 6, (long long )(& x), 8);
  __CrownApply1(9, 27, 6, (long long )((unsigned long )(& x)), (double )((unsigned long )(& x)));
  __CrownApply2(8, 13, 5, (long long )((unsigned long )ptr == (unsigned long )(& x)),
                (double )((unsigned long )ptr == (unsigned long )(& x)));
# 13 "limit2-sym-ptr.c"
  if ((unsigned long )ptr == (unsigned long )(& x)) {
    __CrownBranch(13, 3, 1, 14, "limit2-sym-ptr.c");
    __CrownLoad(15, (unsigned long )0, 6, (long long )((char const * __restrict )"ptr points to x\n"),
                8);
    __CrownSetCallerCalleeName(16, "main", "printf");
# 13 "limit2-sym-ptr.c"
    printf((char const * __restrict )"ptr points to x\n");
    __CrownEnableSymbolic(18, "main");
    __CrownClearStack(17);
  }
# 13 "limit2-sym-ptr.c"
    else {
    __CrownBranch(14, 4, 0, 14, "limit2-sym-ptr.c");
    {
    __CrownLoad(23, (unsigned long )(& ptr), 6, (long long )ptr, 8);
    __CrownApply1(22, 27, 6, (long long )((unsigned long )ptr), (double )((unsigned long )ptr));
    __CrownLoad(21, (unsigned long )0, 6, (long long )(& y), 8);
    __CrownApply1(20, 27, 6, (long long )((unsigned long )(& y)), (double )((unsigned long )(& y)));
    __CrownApply2(19, 13, 5, (long long )((unsigned long )ptr == (unsigned long )(& y)),
                  (double )((unsigned long )ptr == (unsigned long )(& y)));
# 14 "limit2-sym-ptr.c"
    if ((unsigned long )ptr == (unsigned long )(& y)) {
      __CrownBranch(24, 5, 1, 15, "limit2-sym-ptr.c");
      __CrownLoad(26, (unsigned long )0, 6, (long long )((char const * __restrict )"ptr points to y\n"),
                  8);
      __CrownSetCallerCalleeName(27, "main", "printf");
# 14 "limit2-sym-ptr.c"
      printf((char const * __restrict )"ptr points to y\n");
      __CrownEnableSymbolic(29, "main");
      __CrownClearStack(28);
    }
# 14 "limit2-sym-ptr.c"
      else {
      __CrownBranch(25, 6, 0, 15, "limit2-sym-ptr.c");

    }
    }
  }
  __CrownLoad(32, (unsigned long )ptr, 5, (long long )*ptr, (double )*ptr);
  __CrownLoad(31, (unsigned long )(& x), 5, (long long )x, (double )x);
  __CrownApply2(30, 13, 5, (long long )(*ptr == x), (double )(*ptr == x));
# 16 "limit2-sym-ptr.c"
  if (*ptr == x) {
    __CrownBranch(33, 8, 1, 17, "limit2-sym-ptr.c");
    __CrownLoad(35, (unsigned long )0, 6, (long long )((char const * __restrict )"*ptr equals to x\n"),
                8);
    __CrownSetCallerCalleeName(36, "main", "printf");
# 16 "limit2-sym-ptr.c"
    printf((char const * __restrict )"*ptr equals to x\n");
    __CrownEnableSymbolic(38, "main");
    __CrownClearStack(37);
  }
# 16 "limit2-sym-ptr.c"
    else {
    __CrownBranch(34, 9, 0, 17, "limit2-sym-ptr.c");
    {
    __CrownLoad(41, (unsigned long )ptr, 5, (long long )*ptr, (double )*ptr);
    __CrownLoad(40, (unsigned long )(& y), 5, (long long )y, (double )y);
    __CrownApply2(39, 13, 5, (long long )(*ptr == y), (double )(*ptr == y));
# 17 "limit2-sym-ptr.c"
    if (*ptr == y) {
      __CrownBranch(42, 10, 1, 18, "limit2-sym-ptr.c");
      __CrownLoad(44, (unsigned long )0, 6, (long long )((char const * __restrict )"*ptr equals to y\n"),
                  8);
      __CrownSetCallerCalleeName(45, "main", "printf");
# 17 "limit2-sym-ptr.c"
      printf((char const * __restrict )"*ptr equals to y\n");
      __CrownEnableSymbolic(47, "main");
      __CrownClearStack(46);
    }
# 17 "limit2-sym-ptr.c"
      else {
      __CrownBranch(43, 11, 0, 18, "limit2-sym-ptr.c");

    }
    }
  }
  __CrownLoad(48, (unsigned long )0, 5, (long long )0, (double )0);
  __CrownStore(49, (unsigned long )(& __retres4));
# 18 "limit2-sym-ptr.c"
  __retres4 = 0;
  __CrownLoad(50, (unsigned long )(& __retres4), 5, (long long )__retres4, (double )__retres4);
  __CrownReturn(51);
# 5 "limit2-sym-ptr.c"
  return (__retres4);
}
}
void __globinit_limit2_sym_ptr(void)
{


  {
  __CrownInit(52);
}
}
