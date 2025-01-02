# 1 "./sort-4.cil.c"
# 1 "/mnt/c/Dropbox/classes/CS492A-Fall18/3-crown/code-examples/sort//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./sort-4.cil.c"
# 5 "sort-4.c"
void __globinit_sort_4(void) ;
extern void __CrownInit(int id ) __attribute__((__crown_skip__)) ;
extern void __CrownHandleReturn(int id , int type , long long val , double fp_val ) __attribute__((__crown_skip__)) ;
extern void __CrownReturn(int id ) __attribute__((__crown_skip__)) ;
extern void __CrownCall(int id , unsigned int fid ) __attribute__((__crown_skip__)) ;
extern void __CrownBranch(int id , int bid , unsigned char b , int line , char *fname ) __attribute__((__crown_skip__)) ;
extern void __CrownApply2(int id , int op , int type , long long val , double fp_val ) __attribute__((__crown_skip__)) ;
extern void __CrownApply1(int id , int op , int type , long long val , double fp_val ) __attribute__((__crown_skip__)) ;
extern void __CrownClearStack(int id ) __attribute__((__crown_skip__)) ;
extern void __CrownStore(int id , unsigned long addr ) __attribute__((__crown_skip__)) ;
extern void __CrownLoad(int id , unsigned long addr , int type , long long val , double fp_val ,
                        char *name , int cnt_symbolic_var , char highestBit , char lowestBit ) __attribute__((__crown_skip__)) ;
unsigned long __CrownTempCall ;
unsigned long __CrownTempAssign ;
# 307 "/home/moonzoo/CROWN/bin/../include/crown.h"
extern void __CrownUInt(unsigned int *x , int cnt_sym_var , int ln , char *fname
                        , ...) __attribute__((__crown_skip__)) ;
# 69 "/usr/include/assert.h"
extern __attribute__((__nothrow__, __noreturn__)) void ( __attribute__((__leaf__)) __assert_fail)(char const *__assertion ,
                                                                                                   char const *__file ,
                                                                                                   unsigned int __line ,
                                                                                                   char const *__function ) ;
# 8 "sort-4.c"
int main(void) ;
# 8 "sort-4.c"
static int cnt_symbolic_var = 1;
# 5 "sort-4.c"
int main(void)
{
  unsigned int a[7] ;
  unsigned int i ;
  unsigned int j ;
  unsigned int tmp ;
  int __retres5 ;

  {
  __globinit_sort_4();
  __CrownCall(2, 1);
  __CrownClearStack(1);
  __CrownLoad(3, (unsigned long )0, 4, (long long )0U, (double )0U, (char *)"", 0,
              (char)0, (char)0);
  __CrownStore(4, (unsigned long )(& i));
# 8 "sort-4.c"
  i = 0U;
# 8 "sort-4.c"
  while (1) {
    while_continue: ;
    {
    __CrownLoad(7, (unsigned long )(& i), 4, (long long )i, (double )i, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(6, (unsigned long )0, 4, (long long )7U, (double )7U, (char *)"",
                0, (char)0, (char)0);
    __CrownApply2(5, 19, 5, (long long )(i < 7U), (double )(i < 7U));
# 8 "sort-4.c"
    if (i < 7U) {
      __CrownBranch(8, 6, 1, 9, "sort-4.c");

    }
# 8 "sort-4.c"
      else {
      __CrownBranch(9, 7, 0, 9, "sort-4.c");
# 8 "sort-4.c"
      goto while_break;
    }
    }
# 8 "sort-4.c"
    __CrownUInt(& a[i], cnt_symbolic_var, 8, (char *)"sort-4.c", "a[i]");
    __CrownLoad(12, (unsigned long )(& cnt_symbolic_var), 5, (long long )cnt_symbolic_var,
                (double )cnt_symbolic_var, (char *)"", 0, (char)0, (char)0);
    __CrownLoad(11, (unsigned long )0, 5, (long long )1, (double )1, (char *)"", 0,
                (char)0, (char)0);
    __CrownApply2(10, 0, 5, (long long )(cnt_symbolic_var + 1), (double )(cnt_symbolic_var + 1));
    __CrownStore(13, (unsigned long )(& cnt_symbolic_var));
# 8 "sort-4.c"
    cnt_symbolic_var ++;
    __CrownLoad(16, (unsigned long )(& i), 4, (long long )i, (double )i, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(15, (unsigned long )0, 4, (long long )1U, (double )1U, (char *)"",
                0, (char)0, (char)0);
    __CrownApply2(14, 0, 4, (long long )(i + 1U), (double )(i + 1U));
    __CrownStore(17, (unsigned long )(& i));
# 8 "sort-4.c"
    i ++;
  }
  while_break:
  __CrownLoad(18, (unsigned long )0, 4, (long long )0U, (double )0U, (char *)"", 0,
              (char)0, (char)0);
  __CrownStore(19, (unsigned long )(& i));
# 11 "sort-4.c"
  i = 0U;
# 11 "sort-4.c"
  while (1) {
    while_continue___0: ;
    {
    __CrownLoad(22, (unsigned long )(& i), 4, (long long )i, (double )i, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(21, (unsigned long )0, 4, (long long )6U, (double )6U, (char *)"",
                0, (char)0, (char)0);
    __CrownApply2(20, 19, 5, (long long )(i < 6U), (double )(i < 6U));
# 11 "sort-4.c"
    if (i < 6U) {
      __CrownBranch(23, 15, 1, 12, "sort-4.c");

    }
# 11 "sort-4.c"
      else {
      __CrownBranch(24, 16, 0, 12, "sort-4.c");
# 11 "sort-4.c"
      goto while_break___0;
    }
    }
    __CrownLoad(27, (unsigned long )(& i), 4, (long long )i, (double )i, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(26, (unsigned long )0, 4, (long long )1U, (double )1U, (char *)"",
                0, (char)0, (char)0);
    __CrownApply2(25, 0, 4, (long long )(i + 1U), (double )(i + 1U));
    __CrownStore(28, (unsigned long )(& j));
# 12 "sort-4.c"
    j = i + 1U;
    {
# 12 "sort-4.c"
    while (1) {
      while_continue___1: ;
      {
      __CrownLoad(31, (unsigned long )(& j), 4, (long long )j, (double )j, (char *)"",
                  0, (char)0, (char)0);
      __CrownLoad(30, (unsigned long )0, 4, (long long )7U, (double )7U, (char *)"",
                  0, (char)0, (char)0);
      __CrownApply2(29, 19, 5, (long long )(j < 7U), (double )(j < 7U));
# 12 "sort-4.c"
      if (j < 7U) {
        __CrownBranch(32, 22, 1, 13, "sort-4.c");

      }
# 12 "sort-4.c"
        else {
        __CrownBranch(33, 23, 0, 13, "sort-4.c");
# 12 "sort-4.c"
        goto while_break___1;
      }
      }
      {
      __CrownLoad(36, (unsigned long )(& a[i]), 4, (long long )a[i], (double )a[i],
                  (char *)"", 0, (char)0, (char)0);
      __CrownLoad(35, (unsigned long )(& a[j]), 4, (long long )a[j], (double )a[j],
                  (char *)"", 0, (char)0, (char)0);
      __CrownApply2(34, 15, 5, (long long )(a[i] > a[j]), (double )(a[i] > a[j]));
# 13 "sort-4.c"
      if (a[i] > a[j]) {
        __CrownBranch(37, 25, 1, 14, "sort-4.c");
        __CrownLoad(39, (unsigned long )(& a[i]), 4, (long long )a[i], (double )a[i],
                    (char *)"", 0, (char)0, (char)0);
        __CrownStore(40, (unsigned long )(& tmp));
# 14 "sort-4.c"
        tmp = a[i];
        __CrownLoad(41, (unsigned long )(& a[j]), 4, (long long )a[j], (double )a[j],
                    (char *)"", 0, (char)0, (char)0);
        __CrownStore(42, (unsigned long )(& a[i]));
# 15 "sort-4.c"
        a[i] = a[j];
        __CrownLoad(43, (unsigned long )(& tmp), 4, (long long )tmp, (double )tmp,
                    (char *)"", 0, (char)0, (char)0);
        __CrownStore(44, (unsigned long )(& a[j]));
# 16 "sort-4.c"
        a[j] = tmp;
      }
# 13 "sort-4.c"
        else {
        __CrownBranch(38, 26, 0, 14, "sort-4.c");

      }
      }
      __CrownLoad(47, (unsigned long )(& j), 4, (long long )j, (double )j, (char *)"",
                  0, (char)0, (char)0);
      __CrownLoad(46, (unsigned long )0, 4, (long long )1U, (double )1U, (char *)"",
                  0, (char)0, (char)0);
      __CrownApply2(45, 0, 4, (long long )(j + 1U), (double )(j + 1U));
      __CrownStore(48, (unsigned long )(& j));
# 12 "sort-4.c"
      j ++;
    }
    while_break___1: ;
    }
    __CrownLoad(51, (unsigned long )(& i), 4, (long long )i, (double )i, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(50, (unsigned long )0, 4, (long long )1U, (double )1U, (char *)"",
                0, (char)0, (char)0);
    __CrownApply2(49, 0, 4, (long long )(i + 1U), (double )(i + 1U));
    __CrownStore(52, (unsigned long )(& i));
# 11 "sort-4.c"
    i ++;
  }
  while_break___0:
  __CrownLoad(53, (unsigned long )0, 4, (long long )0U, (double )0U, (char *)"", 0,
              (char)0, (char)0);
  __CrownStore(54, (unsigned long )(& i));
# 19 "sort-4.c"
  i = 0U;
# 19 "sort-4.c"
  while (1) {
    while_continue___2: ;
    {
    __CrownLoad(57, (unsigned long )(& i), 4, (long long )i, (double )i, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(56, (unsigned long )0, 4, (long long )6U, (double )6U, (char *)"",
                0, (char)0, (char)0);
    __CrownApply2(55, 19, 5, (long long )(i < 6U), (double )(i < 6U));
# 19 "sort-4.c"
    if (i < 6U) {
      __CrownBranch(58, 36, 1, 20, "sort-4.c");

    }
# 19 "sort-4.c"
      else {
      __CrownBranch(59, 37, 0, 20, "sort-4.c");
# 19 "sort-4.c"
      goto while_break___2;
    }
    }
    {
    __CrownLoad(62, (unsigned long )(& a[i]), 4, (long long )a[i], (double )a[i],
                (char *)"", 0, (char)0, (char)0);
    __CrownLoad(61, (unsigned long )(& a[i + 1U]), 4, (long long )a[i + 1U], (double )a[i + 1U],
                (char *)"", 0, (char)0, (char)0);
    __CrownApply2(60, 17, 5, (long long )(a[i] <= a[i + 1U]), (double )(a[i] <= a[i + 1U]));
# 20 "sort-4.c"
    if (a[i] <= a[i + 1U]) {
      __CrownBranch(63, 39, 1, 21, "sort-4.c");

    }
# 20 "sort-4.c"
      else {
      __CrownBranch(64, 40, 0, 21, "sort-4.c");
      __CrownLoad(65, (unsigned long )0, 6, (long long )"a[i] <= a[i+1]", 8, (char *)"",
                  0, (char)0, (char)0);
      __CrownLoad(66, (unsigned long )0, 6, (long long )"sort-4.c", 8, (char *)"",
                  0, (char)0, (char)0);
      __CrownLoad(67, (unsigned long )0, 4, (long long )20U, (double )20U, (char *)"",
                  0, (char)0, (char)0);
      __CrownLoad(68, (unsigned long )0, 6, (long long )"main", 8, (char *)"", 0,
                  (char)0, (char)0);
# 20 "sort-4.c"
      __assert_fail("a[i] <= a[i+1]", "sort-4.c", 20U, "main");
      __CrownClearStack(69);
    }
    }
    __CrownLoad(72, (unsigned long )(& i), 4, (long long )i, (double )i, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(71, (unsigned long )0, 4, (long long )1U, (double )1U, (char *)"",
                0, (char)0, (char)0);
    __CrownApply2(70, 0, 4, (long long )(i + 1U), (double )(i + 1U));
    __CrownStore(73, (unsigned long )(& i));
# 19 "sort-4.c"
    i ++;
  }
  while_break___2:
  __CrownLoad(74, (unsigned long )0, 5, (long long )0, (double )0, (char *)"", 0,
              (char)0, (char)0);
  __CrownStore(75, (unsigned long )(& __retres5));
# 21 "sort-4.c"
  __retres5 = 0;
  __CrownLoad(76, (unsigned long )(& __retres5), 5, (long long )__retres5, (double )__retres5,
              (char *)"", 0, (char)0, (char)0);
  __CrownReturn(77);
# 5 "sort-4.c"
  return (__retres5);
}
}
void __globinit_sort_4(void)
{


  {
  __CrownInit(78);
}
}
