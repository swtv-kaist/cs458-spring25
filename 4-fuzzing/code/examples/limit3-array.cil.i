# 1 "./limit3-array.cil.c"
# 1 "/mnt/c/Dropbox/classes/CS492A-Fall18/3-crown/code-examples/examples//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./limit3-array.cil.c"
# 5 "limit3-array.c"
void __globinit_limit3_array(void) ;
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
# 376 "/mnt/d/ubuntu/CROWN-sym_assume/bin/../include/crown.h"
extern void __CrownInt(int *x , int cnt_sym_var , int ln , char *fname , ...) __attribute__((__crown_skip__)) ;
# 11 "limit3-array.c"
int main(void) ;
# 11 "limit3-array.c"
static int cnt_symbolic_var = 1;
# 5 "limit3-array.c"
int main(void)
{
  int i ;
  int array[4] ;
  int __retres3 ;

  {
  __globinit_limit3_array();
  __CrownCheckSymbolic(3, "main");
  __CrownCall(2, 1);
  __CrownClearStack(1);
  __CrownLoad(4, (unsigned long )0, 5, (long long )0, (double )0);
  __CrownStore(5, (unsigned long )(& i));
# 10 "limit3-array.c"
  i = 0;
# 10 "limit3-array.c"
  while (1) {
    while_continue: ;
    {
    __CrownLoad(8, (unsigned long )(& i), 5, (long long )i, (double )i);
    __CrownLoad(7, (unsigned long )0, 5, (long long )4, (double )4);
    __CrownApply2(6, 20, 5, (long long )(i < 4), (double )(i < 4));
# 10 "limit3-array.c"
    if (i < 4) {
      __CrownBranch(9, 6, 1, 11, "limit3-array.c");

    }
# 10 "limit3-array.c"
      else {
      __CrownBranch(10, 7, 0, 11, "limit3-array.c");
# 10 "limit3-array.c"
      goto while_break;
    }
    }
# 11 "limit3-array.c"
    __CrownInt(& array[i], cnt_symbolic_var, 11, (char *)"limit3-array.c", "array[i]");
    __CrownLoad(13, (unsigned long )(& cnt_symbolic_var), 5, (long long )cnt_symbolic_var,
                (double )cnt_symbolic_var);
    __CrownLoad(12, (unsigned long )0, 5, (long long )1, (double )1);
    __CrownApply2(11, 0, 5, (long long )(cnt_symbolic_var + 1), (double )(cnt_symbolic_var + 1));
    __CrownStore(14, (unsigned long )(& cnt_symbolic_var));
# 11 "limit3-array.c"
    cnt_symbolic_var ++;
    __CrownLoad(17, (unsigned long )(& i), 5, (long long )i, (double )i);
    __CrownLoad(16, (unsigned long )0, 5, (long long )1, (double )1);
    __CrownApply2(15, 0, 5, (long long )(i + 1), (double )(i + 1));
    __CrownStore(18, (unsigned long )(& i));
# 10 "limit3-array.c"
    i ++;
  }
  while_break:
  __CrownLoad(21, (unsigned long )(& array[1]), 5, (long long )array[1], (double )array[1]);
  __CrownLoad(20, (unsigned long )0, 5, (long long )3, (double )3);
  __CrownApply2(19, 13, 5, (long long )(array[1] == 3), (double )(array[1] == 3));
# 13 "limit3-array.c"
  if (array[1] == 3) {
    __CrownBranch(22, 11, 1, 14, "limit3-array.c");
    __CrownLoad(24, (unsigned long )0, 6, (long long )((char const * __restrict )"array[1] is 3\n"),
                8);
    __CrownSetCallerCalleeName(25, "main", "printf");
# 14 "limit3-array.c"
    printf((char const * __restrict )"array[1] is 3\n");
    __CrownEnableSymbolic(27, "main");
    __CrownClearStack(26);
  }
# 13 "limit3-array.c"
    else {
    __CrownBranch(23, 12, 0, 14, "limit3-array.c");
    __CrownLoad(28, (unsigned long )0, 6, (long long )((char const * __restrict )"array[1] is not 3 but %d\n"),
                8);
    __CrownLoad(29, (unsigned long )(& array[1]), 5, (long long )array[1], (double )array[1]);
    __CrownSetCallerCalleeName(30, "main", "printf");
# 15 "limit3-array.c"
    printf((char const * __restrict )"array[1] is not 3 but %d\n", array[1]);
    __CrownEnableSymbolic(32, "main");
    __CrownClearStack(31);
  }
  __CrownLoad(33, (unsigned long )0, 5, (long long )0, (double )0);
  __CrownStore(34, (unsigned long )(& __retres3));
# 16 "limit3-array.c"
  __retres3 = 0;
  __CrownLoad(35, (unsigned long )(& __retres3), 5, (long long )__retres3, (double )__retres3);
  __CrownReturn(36);
# 5 "limit3-array.c"
  return (__retres3);
}
}
void __globinit_limit3_array(void)
{


  {
  __CrownInit(37);
}
}
