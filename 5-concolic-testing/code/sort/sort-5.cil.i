# 1 "./sort-5.cil.c"
# 1 "/mnt/c/Dropbox/classes/CS492A-Fall18/3-crown/code-examples/sort//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./sort-5.cil.c"
# 5 "sort-5.c"
void __globinit_sort_5(void) ;
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
# 371 "/mnt/c/ubuntu/CROWN/bin/../include/crown.h"
extern void __CrownUInt(unsigned int *x , int cnt_sym_var , int ln , char *fname
                        , ...) __attribute__((__crown_skip__)) ;
# 69 "/usr/include/assert.h"
extern __attribute__((__nothrow__, __noreturn__)) void ( __attribute__((__leaf__)) __assert_fail)(char const *__assertion ,
                                                                                                   char const *__file ,
                                                                                                   unsigned int __line ,
                                                                                                   char const *__function ) ;
# 8 "sort-5.c"
int main(void) ;
# 8 "sort-5.c"
static int cnt_symbolic_var = 1;
# 5 "sort-5.c"
int main(void)
{
  unsigned int a[5] ;
  unsigned int i ;
  unsigned int j ;
  unsigned int tmp ;
  int __retres5 ;

  {
  __globinit_sort_5();
  __CrownCheckSymbolic(3, "main");
  __CrownCall(2, 1);
  __CrownClearStack(1);
  __CrownLoad(4, (unsigned long )0, 4, (long long )0U, (double )0U);
  __CrownStore(5, (unsigned long )(& i));
# 8 "sort-5.c"
  i = 0U;
# 8 "sort-5.c"
  while (1) {
    while_continue: ;
    {
    __CrownLoad(8, (unsigned long )(& i), 4, (long long )i, (double )i);
    __CrownLoad(7, (unsigned long )0, 4, (long long )5U, (double )5U);
    __CrownApply2(6, 19, 5, (long long )(i < 5U), (double )(i < 5U));
# 8 "sort-5.c"
    if (i < 5U) {
      __CrownBranch(9, 6, 1, 9, "sort-5.c");

    }
# 8 "sort-5.c"
      else {
      __CrownBranch(10, 7, 0, 9, "sort-5.c");
# 8 "sort-5.c"
      goto while_break;
    }
    }
# 8 "sort-5.c"
    __CrownUInt(& a[i], cnt_symbolic_var, 8, (char *)"sort-5.c", "a[i]");
    __CrownLoad(13, (unsigned long )(& cnt_symbolic_var), 5, (long long )cnt_symbolic_var,
                (double )cnt_symbolic_var);
    __CrownLoad(12, (unsigned long )0, 5, (long long )1, (double )1);
    __CrownApply2(11, 0, 5, (long long )(cnt_symbolic_var + 1), (double )(cnt_symbolic_var + 1));
    __CrownStore(14, (unsigned long )(& cnt_symbolic_var));
# 8 "sort-5.c"
    cnt_symbolic_var ++;
    __CrownLoad(17, (unsigned long )(& i), 4, (long long )i, (double )i);
    __CrownLoad(16, (unsigned long )0, 4, (long long )1U, (double )1U);
    __CrownApply2(15, 0, 4, (long long )(i + 1U), (double )(i + 1U));
    __CrownStore(18, (unsigned long )(& i));
# 8 "sort-5.c"
    i ++;
  }
  while_break:
  __CrownLoad(19, (unsigned long )0, 4, (long long )0U, (double )0U);
  __CrownStore(20, (unsigned long )(& i));
# 11 "sort-5.c"
  i = 0U;
# 11 "sort-5.c"
  while (1) {
    while_continue___0: ;
    {
    __CrownLoad(23, (unsigned long )(& i), 4, (long long )i, (double )i);
    __CrownLoad(22, (unsigned long )0, 4, (long long )4U, (double )4U);
    __CrownApply2(21, 19, 5, (long long )(i < 4U), (double )(i < 4U));
# 11 "sort-5.c"
    if (i < 4U) {
      __CrownBranch(24, 15, 1, 12, "sort-5.c");

    }
# 11 "sort-5.c"
      else {
      __CrownBranch(25, 16, 0, 12, "sort-5.c");
# 11 "sort-5.c"
      goto while_break___0;
    }
    }
    __CrownLoad(28, (unsigned long )(& i), 4, (long long )i, (double )i);
    __CrownLoad(27, (unsigned long )0, 4, (long long )1U, (double )1U);
    __CrownApply2(26, 0, 4, (long long )(i + 1U), (double )(i + 1U));
    __CrownStore(29, (unsigned long )(& j));
# 12 "sort-5.c"
    j = i + 1U;
    {
# 12 "sort-5.c"
    while (1) {
      while_continue___1: ;
      {
      __CrownLoad(32, (unsigned long )(& j), 4, (long long )j, (double )j);
      __CrownLoad(31, (unsigned long )0, 4, (long long )5U, (double )5U);
      __CrownApply2(30, 19, 5, (long long )(j < 5U), (double )(j < 5U));
# 12 "sort-5.c"
      if (j < 5U) {
        __CrownBranch(33, 22, 1, 13, "sort-5.c");

      }
# 12 "sort-5.c"
        else {
        __CrownBranch(34, 23, 0, 13, "sort-5.c");
# 12 "sort-5.c"
        goto while_break___1;
      }
      }
      {
      __CrownLoad(37, (unsigned long )(& a[i]), 4, (long long )a[i], (double )a[i]);
      __CrownLoad(36, (unsigned long )(& a[j]), 4, (long long )a[j], (double )a[j]);
      __CrownApply2(35, 15, 5, (long long )(a[i] > a[j]), (double )(a[i] > a[j]));
# 13 "sort-5.c"
      if (a[i] > a[j]) {
        __CrownBranch(38, 25, 1, 14, "sort-5.c");
        __CrownLoad(40, (unsigned long )(& a[i]), 4, (long long )a[i], (double )a[i]);
        __CrownStore(41, (unsigned long )(& tmp));
# 14 "sort-5.c"
        tmp = a[i];
        __CrownLoad(42, (unsigned long )(& a[j]), 4, (long long )a[j], (double )a[j]);
        __CrownStore(43, (unsigned long )(& a[i]));
# 15 "sort-5.c"
        a[i] = a[j];
        __CrownLoad(44, (unsigned long )(& tmp), 4, (long long )tmp, (double )tmp);
        __CrownStore(45, (unsigned long )(& a[j]));
# 16 "sort-5.c"
        a[j] = tmp;
      }
# 13 "sort-5.c"
        else {
        __CrownBranch(39, 26, 0, 14, "sort-5.c");

      }
      }
      __CrownLoad(48, (unsigned long )(& j), 4, (long long )j, (double )j);
      __CrownLoad(47, (unsigned long )0, 4, (long long )1U, (double )1U);
      __CrownApply2(46, 0, 4, (long long )(j + 1U), (double )(j + 1U));
      __CrownStore(49, (unsigned long )(& j));
# 12 "sort-5.c"
      j ++;
    }
    while_break___1: ;
    }
    __CrownLoad(52, (unsigned long )(& i), 4, (long long )i, (double )i);
    __CrownLoad(51, (unsigned long )0, 4, (long long )1U, (double )1U);
    __CrownApply2(50, 0, 4, (long long )(i + 1U), (double )(i + 1U));
    __CrownStore(53, (unsigned long )(& i));
# 11 "sort-5.c"
    i ++;
  }
  while_break___0:
  __CrownLoad(54, (unsigned long )0, 4, (long long )0U, (double )0U);
  __CrownStore(55, (unsigned long )(& i));
# 19 "sort-5.c"
  i = 0U;
# 19 "sort-5.c"
  while (1) {
    while_continue___2: ;
    {
    __CrownLoad(58, (unsigned long )(& i), 4, (long long )i, (double )i);
    __CrownLoad(57, (unsigned long )0, 4, (long long )4U, (double )4U);
    __CrownApply2(56, 19, 5, (long long )(i < 4U), (double )(i < 4U));
# 19 "sort-5.c"
    if (i < 4U) {
      __CrownBranch(59, 36, 1, 20, "sort-5.c");

    }
# 19 "sort-5.c"
      else {
      __CrownBranch(60, 37, 0, 20, "sort-5.c");
# 19 "sort-5.c"
      goto while_break___2;
    }
    }
    {
    __CrownLoad(63, (unsigned long )(& a[i]), 4, (long long )a[i], (double )a[i]);
    __CrownLoad(62, (unsigned long )(& a[i + 1U]), 4, (long long )a[i + 1U], (double )a[i + 1U]);
    __CrownApply2(61, 17, 5, (long long )(a[i] <= a[i + 1U]), (double )(a[i] <= a[i + 1U]));
# 20 "sort-5.c"
    if (a[i] <= a[i + 1U]) {
      __CrownBranch(64, 39, 1, 21, "sort-5.c");

    }
# 20 "sort-5.c"
      else {
      __CrownBranch(65, 40, 0, 21, "sort-5.c");
      __CrownSetCallerCalleeName(67, "main", "__assert_fail");
# 20 "sort-5.c"
      __assert_fail("a[i] <= a[i+1]", "sort-5.c", 20U, "main");
      __CrownEnableSymbolic(66, "main");
    }
    }
    __CrownLoad(70, (unsigned long )(& i), 4, (long long )i, (double )i);
    __CrownLoad(69, (unsigned long )0, 4, (long long )1U, (double )1U);
    __CrownApply2(68, 0, 4, (long long )(i + 1U), (double )(i + 1U));
    __CrownStore(71, (unsigned long )(& i));
# 19 "sort-5.c"
    i ++;
  }
  while_break___2:
  __CrownLoad(72, (unsigned long )0, 5, (long long )0, (double )0);
  __CrownStore(73, (unsigned long )(& __retres5));
# 21 "sort-5.c"
  __retres5 = 0;
  __CrownLoad(74, (unsigned long )(& __retres5), 5, (long long )__retres5, (double )__retres5);
  __CrownReturn(75);
# 5 "sort-5.c"
  return (__retres5);
}
}
void __globinit_sort_5(void)
{


  {
  __CrownInit(76);
}
}
