# 1 "./limit1-ext-lib.cil.c"
# 1 "/mnt/c/Dropbox/classes/CS492A-Fall18/3-crown/code-examples/examples//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./limit1-ext-lib.cil.c"
# 8 "limit1-ext-lib.c"
void __globinit_limit1_ext_lib(void) ;
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
# 774 "/usr/include/stdlib.h"
extern __attribute__((__nothrow__)) int ( __attribute__((__leaf__)) abs)(int __x ) __attribute__((__const__)) ;
# 362 "/usr/include/stdio.h"
extern int printf(char const * __restrict __format , ...) ;
# 376 "/mnt/d/ubuntu/CROWN-sym_assume/bin/../include/crown.h"
extern void __CrownInt(int *x , int cnt_sym_var , int ln , char *fname , ...) __attribute__((__crown_skip__)) ;
# 10 "limit1-ext-lib.c"
int main(void) ;
# 10 "limit1-ext-lib.c"
static int cnt_symbolic_var = 1;
# 8 "limit1-ext-lib.c"
int main(void)
{
  int x ;
  int tmp ;
  int __retres3 ;

  {
  __globinit_limit1_ext_lib();
  __CrownCheckSymbolic(3, "main");
  __CrownCall(2, 1);
  __CrownClearStack(1);
# 10 "limit1-ext-lib.c"
  __CrownInt(& x, cnt_symbolic_var, 10, (char *)"limit1-ext-lib.c", "x");
  __CrownLoad(6, (unsigned long )(& cnt_symbolic_var), 5, (long long )cnt_symbolic_var,
              (double )cnt_symbolic_var);
  __CrownLoad(5, (unsigned long )0, 5, (long long )1, (double )1);
  __CrownApply2(4, 0, 5, (long long )(cnt_symbolic_var + 1), (double )(cnt_symbolic_var + 1));
  __CrownStore(7, (unsigned long )(& cnt_symbolic_var));
# 10 "limit1-ext-lib.c"
  cnt_symbolic_var ++;
  __CrownLoad(8, (unsigned long )0, 6, (long long )((char const * __restrict )"x == %d\n"),
              8);
  __CrownLoad(9, (unsigned long )(& x), 5, (long long )x, (double )x);
  __CrownSetCallerCalleeName(10, "main", "printf");
# 11 "limit1-ext-lib.c"
  printf((char const * __restrict )"x == %d\n", x);
  __CrownEnableSymbolic(12, "main");
  __CrownClearStack(11);
  __CrownLoad(13, (unsigned long )(& x), 5, (long long )x, (double )x);
  __CrownSetCallerCalleeName(14, "main", "abs");
# 12 "limit1-ext-lib.c"
  tmp = abs(x);
  __CrownEnableSymbolic(17, "main");
  __CrownHandleReturn(16, 5, (long long )tmp, (double )tmp);
  __CrownStore(15, (unsigned long )(& tmp));
  __CrownLoad(20, (unsigned long )(& x), 5, (long long )x, (double )x);
  __CrownLoad(19, (unsigned long )(& tmp), 5, (long long )tmp, (double )tmp);
  __CrownApply2(18, 13, 5, (long long )(x == tmp), (double )(x == tmp));
# 12 "limit1-ext-lib.c"
  if (x == tmp) {
    __CrownBranch(21, 3, 1, 13, "limit1-ext-lib.c");
    __CrownLoad(23, (unsigned long )0, 6, (long long )((char const * __restrict )"x >= 0\n"),
                8);
    __CrownSetCallerCalleeName(24, "main", "printf");
# 14 "limit1-ext-lib.c"
    printf((char const * __restrict )"x >= 0\n");
    __CrownEnableSymbolic(26, "main");
    __CrownClearStack(25);
  }
# 12 "limit1-ext-lib.c"
    else {
    __CrownBranch(22, 4, 0, 13, "limit1-ext-lib.c");
    __CrownLoad(27, (unsigned long )0, 6, (long long )((char const * __restrict )"x <= 0\n"),
                8);
    __CrownSetCallerCalleeName(28, "main", "printf");
# 16 "limit1-ext-lib.c"
    printf((char const * __restrict )"x <= 0\n");
    __CrownEnableSymbolic(30, "main");
    __CrownClearStack(29);
  }
  __CrownLoad(31, (unsigned long )0, 5, (long long )0, (double )0);
  __CrownStore(32, (unsigned long )(& __retres3));
# 18 "limit1-ext-lib.c"
  __retres3 = 0;
  __CrownLoad(33, (unsigned long )(& __retres3), 5, (long long )__retres3, (double )__retres3);
  __CrownReturn(34);
# 8 "limit1-ext-lib.c"
  return (__retres3);
}
}
void __globinit_limit1_ext_lib(void)
{


  {
  __CrownInit(35);
}
}
