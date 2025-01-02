# 1 "./bin-search-crown.cil.c"
# 1 "/mnt/c/Dropbox/산학과제/LG-SDET교육/2018강의/SDET실습/crown/bin-search//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./bin-search-crown.cil.c"
# 79 "bin-search-crown.c"
void __globinit_bin_search_crown(void) ;
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
# 362 "/usr/include/stdio.h"
extern int printf(char const * __restrict __format , ...) ;
# 69 "/usr/include/assert.h"
extern __attribute__((__nothrow__, __noreturn__)) void ( __attribute__((__leaf__)) __assert_fail)(char const *__assertion ,
                                                                                                   char const *__file ,
                                                                                                   unsigned int __line ,
                                                                                                   char const *__function ) ;
# 543 "/usr/include/stdlib.h"
extern __attribute__((__nothrow__, __noreturn__)) void ( __attribute__((__leaf__)) exit)(int __status ) ;
# 312 "/home/moonzoo/CROWN/bin/../include/crown.h"
extern void __CrownInt(int *x , int cnt_sym_var , int ln , char *fname , ...) __attribute__((__crown_skip__)) ;
# 8 "bin-search-crown.c"
int array[8] ;
# 8 "bin-search-crown.c"
int n ;
# 9 "bin-search-crown.c"
int old_array[8] ;
# 17 "bin-search-crown.c"
void setup_array(void) ;
# 17 "bin-search-crown.c"
static int cnt_symbolic_var = 1;
# 27 "bin-search-crown.c"
void setup_array(void) ;
# 27 "bin-search-crown.c"
static int cnt_symbolic_var___0 = 1;
# 11 "bin-search-crown.c"
void setup_array(void)
{
  int c ;

  {
  __CrownCall(1, 1);
# 17 "bin-search-crown.c"
  __CrownInt(& n, cnt_symbolic_var, 17, (char *)"bin-search-crown.c", "n");
  __CrownLoad(4, (unsigned long )(& cnt_symbolic_var), 5, (long long )cnt_symbolic_var,
              (double )cnt_symbolic_var, (char *)"", 0, (char)0, (char)0);
  __CrownLoad(3, (unsigned long )0, 5, (long long )1, (double )1, (char *)"", 0, (char)0,
              (char)0);
  __CrownApply2(2, 0, 5, (long long )(cnt_symbolic_var + 1), (double )(cnt_symbolic_var + 1));
  __CrownStore(5, (unsigned long )(& cnt_symbolic_var));
# 17 "bin-search-crown.c"
  cnt_symbolic_var ++;
  {
  __CrownLoad(8, (unsigned long )0, 5, (long long )0, (double )0, (char *)"", 0, (char)0,
              (char)0);
  __CrownLoad(7, (unsigned long )(& n), 5, (long long )n, (double )n, (char *)"",
              0, (char)0, (char)0);
  __CrownApply2(6, 20, 5, (long long )(0 < n), (double )(0 < n));
# 20 "bin-search-crown.c"
  if (0 < n) {
    __CrownBranch(9, 3, 1, 21, "bin-search-crown.c");
    {
    __CrownLoad(13, (unsigned long )(& n), 5, (long long )n, (double )n, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(12, (unsigned long )0, 5, (long long )8, (double )8, (char *)"", 0,
                (char)0, (char)0);
    __CrownApply2(11, 18, 5, (long long )(n <= 8), (double )(n <= 8));
# 20 "bin-search-crown.c"
    if (n <= 8) {
      __CrownBranch(14, 4, 1, 21, "bin-search-crown.c");

    }
# 20 "bin-search-crown.c"
      else {
      __CrownBranch(15, 5, 0, 21, "bin-search-crown.c");
      __CrownLoad(16, (unsigned long )0, 6, (long long )((char const * __restrict )"Invalid input generated:n=%d\n"),
                  8, (char *)"", 0, (char)0, (char)0);
      __CrownLoad(17, (unsigned long )(& n), 5, (long long )n, (double )n, (char *)"",
                  0, (char)0, (char)0);
# 20 "bin-search-crown.c"
      printf((char const * __restrict )"Invalid input generated:n=%d\n", n);
      __CrownClearStack(18);
      __CrownLoad(19, (unsigned long )0, 5, (long long )-1, (double )-1, (char *)"",
                  0, (char)0, (char)0);
# 20 "bin-search-crown.c"
      exit(-1);
      __CrownClearStack(20);
    }
    }
  }
# 20 "bin-search-crown.c"
    else {
    __CrownBranch(10, 6, 0, 21, "bin-search-crown.c");
    __CrownLoad(21, (unsigned long )0, 6, (long long )((char const * __restrict )"Invalid input generated:n=%d\n"),
                8, (char *)"", 0, (char)0, (char)0);
    __CrownLoad(22, (unsigned long )(& n), 5, (long long )n, (double )n, (char *)"",
                0, (char)0, (char)0);
# 20 "bin-search-crown.c"
    printf((char const * __restrict )"Invalid input generated:n=%d\n", n);
    __CrownClearStack(23);
    __CrownLoad(24, (unsigned long )0, 5, (long long )-1, (double )-1, (char *)"",
                0, (char)0, (char)0);
# 20 "bin-search-crown.c"
    exit(-1);
    __CrownClearStack(25);
  }
  }
  __CrownLoad(26, (unsigned long )0, 5, (long long )0, (double )0, (char *)"", 0,
              (char)0, (char)0);
  __CrownStore(27, (unsigned long )(& c));
# 24 "bin-search-crown.c"
  c = 0;
  {
# 24 "bin-search-crown.c"
  while (1) {
    while_continue: ;
    {
    __CrownLoad(30, (unsigned long )(& c), 5, (long long )c, (double )c, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(29, (unsigned long )(& n), 5, (long long )n, (double )n, (char *)"",
                0, (char)0, (char)0);
    __CrownApply2(28, 20, 5, (long long )(c < n), (double )(c < n));
# 24 "bin-search-crown.c"
    if (c < n) {
      __CrownBranch(31, 12, 1, 25, "bin-search-crown.c");

    }
# 24 "bin-search-crown.c"
      else {
      __CrownBranch(32, 13, 0, 25, "bin-search-crown.c");
# 24 "bin-search-crown.c"
      goto while_break;
    }
    }
# 27 "bin-search-crown.c"
    __CrownInt(& array[c], cnt_symbolic_var___0, 27, (char *)"bin-search-crown.c",
               "array[c]");
    __CrownLoad(35, (unsigned long )(& cnt_symbolic_var___0), 5, (long long )cnt_symbolic_var___0,
                (double )cnt_symbolic_var___0, (char *)"", 0, (char)0, (char)0);
    __CrownLoad(34, (unsigned long )0, 5, (long long )1, (double )1, (char *)"", 0,
                (char)0, (char)0);
    __CrownApply2(33, 0, 5, (long long )(cnt_symbolic_var___0 + 1), (double )(cnt_symbolic_var___0 + 1));
    __CrownStore(36, (unsigned long )(& cnt_symbolic_var___0));
# 27 "bin-search-crown.c"
    cnt_symbolic_var___0 ++;
    {
    __CrownLoad(39, (unsigned long )(& c), 5, (long long )c, (double )c, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(38, (unsigned long )0, 5, (long long )0, (double )0, (char *)"", 0,
                (char)0, (char)0);
    __CrownApply2(37, 16, 5, (long long )(c > 0), (double )(c > 0));
# 28 "bin-search-crown.c"
    if (c > 0) {
      __CrownBranch(40, 16, 1, 29, "bin-search-crown.c");
      {
      __CrownLoad(45, (unsigned long )(& array[c - 1]), 5, (long long )array[c - 1],
                  (double )array[c - 1], (char *)"", 0, (char)0, (char)0);
      __CrownLoad(44, (unsigned long )(& array[c]), 5, (long long )array[c], (double )array[c],
                  (char *)"", 0, (char)0, (char)0);
      __CrownApply2(43, 18, 5, (long long )(array[c - 1] <= array[c]), (double )(array[c - 1] <= array[c]));
      __CrownApply1(42, 26, 5, (long long )(! (array[c - 1] <= array[c])), (double )(! (array[c - 1] <= array[c])));
# 30 "bin-search-crown.c"
      if (! (array[c - 1] <= array[c])) {
        __CrownBranch(46, 17, 1, 31, "bin-search-crown.c");
        __CrownLoad(48, (unsigned long )0, 6, (long long )((char const * __restrict )"Invalid input generated:a[%d]=%d\n"),
                    8, (char *)"", 0, (char)0, (char)0);
        __CrownLoad(49, (unsigned long )(& c), 5, (long long )c, (double )c, (char *)"",
                    0, (char)0, (char)0);
        __CrownLoad(50, (unsigned long )(& array[c]), 5, (long long )array[c], (double )array[c],
                    (char *)"", 0, (char)0, (char)0);
# 30 "bin-search-crown.c"
        printf((char const * __restrict )"Invalid input generated:a[%d]=%d\n",
               c, array[c]);
        __CrownClearStack(51);
        __CrownLoad(52, (unsigned long )0, 5, (long long )-1, (double )-1, (char *)"",
                    0, (char)0, (char)0);
# 30 "bin-search-crown.c"
        exit(-1);
        __CrownClearStack(53);
      }
# 30 "bin-search-crown.c"
        else {
        __CrownBranch(47, 18, 0, 31, "bin-search-crown.c");

      }
      }
    }
# 28 "bin-search-crown.c"
      else {
      __CrownBranch(41, 19, 0, 29, "bin-search-crown.c");

    }
    }
    __CrownLoad(56, (unsigned long )(& c), 5, (long long )c, (double )c, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(55, (unsigned long )0, 5, (long long )1, (double )1, (char *)"", 0,
                (char)0, (char)0);
    __CrownApply2(54, 0, 5, (long long )(c + 1), (double )(c + 1));
    __CrownStore(57, (unsigned long )(& c));
# 24 "bin-search-crown.c"
    c ++;
  }
  while_break: ;
  }

  {
  __CrownReturn(58);
# 11 "bin-search-crown.c"
  return;
  }
}
}
# 37 "bin-search-crown.c"
int bin_search(int search )
{
  int first ;
  int last ;
  int middle ;
  int __retres5 ;

  {
  __CrownCall(60, 2);
  __CrownStore(59, (unsigned long )(& search));
  __CrownLoad(61, (unsigned long )0, 5, (long long )0, (double )0, (char *)"", 0,
              (char)0, (char)0);
  __CrownStore(62, (unsigned long )(& first));
# 41 "bin-search-crown.c"
  first = 0;
  __CrownLoad(65, (unsigned long )(& n), 5, (long long )n, (double )n, (char *)"",
              0, (char)0, (char)0);
  __CrownLoad(64, (unsigned long )0, 5, (long long )1, (double )1, (char *)"", 0,
              (char)0, (char)0);
  __CrownApply2(63, 1, 5, (long long )(n - 1), (double )(n - 1));
  __CrownStore(66, (unsigned long )(& last));
# 42 "bin-search-crown.c"
  last = n - 1;
  __CrownLoad(71, (unsigned long )(& first), 5, (long long )first, (double )first,
              (char *)"", 0, (char)0, (char)0);
  __CrownLoad(70, (unsigned long )(& last), 5, (long long )last, (double )last, (char *)"",
              0, (char)0, (char)0);
  __CrownApply2(69, 0, 5, (long long )(first + last), (double )(first + last));
  __CrownLoad(68, (unsigned long )0, 5, (long long )2, (double )2, (char *)"", 0,
              (char)0, (char)0);
  __CrownApply2(67, 4, 5, (long long )((first + last) / 2), (double )((first + last) / 2));
  __CrownStore(72, (unsigned long )(& middle));
# 43 "bin-search-crown.c"
  middle = (first + last) / 2;
  {
# 45 "bin-search-crown.c"
  while (1) {
    while_continue: ;
    {
    __CrownLoad(75, (unsigned long )(& first), 5, (long long )first, (double )first,
                (char *)"", 0, (char)0, (char)0);
    __CrownLoad(74, (unsigned long )(& last), 5, (long long )last, (double )last,
                (char *)"", 0, (char)0, (char)0);
    __CrownApply2(73, 18, 5, (long long )(first <= last), (double )(first <= last));
# 45 "bin-search-crown.c"
    if (first <= last) {
      __CrownBranch(76, 29, 1, 46, "bin-search-crown.c");

    }
# 45 "bin-search-crown.c"
      else {
      __CrownBranch(77, 30, 0, 46, "bin-search-crown.c");
# 45 "bin-search-crown.c"
      goto while_break;
    }
    }
    {
    __CrownLoad(80, (unsigned long )(& array[middle]), 5, (long long )array[middle],
                (double )array[middle], (char *)"", 0, (char)0, (char)0);
    __CrownLoad(79, (unsigned long )(& search), 5, (long long )search, (double )search,
                (char *)"", 0, (char)0, (char)0);
    __CrownApply2(78, 20, 5, (long long )(array[middle] < search), (double )(array[middle] < search));
# 46 "bin-search-crown.c"
    if (array[middle] < search) {
      __CrownBranch(81, 32, 1, 47, "bin-search-crown.c");
      __CrownLoad(85, (unsigned long )(& middle), 5, (long long )middle, (double )middle,
                  (char *)"", 0, (char)0, (char)0);
      __CrownLoad(84, (unsigned long )0, 5, (long long )1, (double )1, (char *)"",
                  0, (char)0, (char)0);
      __CrownApply2(83, 0, 5, (long long )(middle + 1), (double )(middle + 1));
      __CrownStore(86, (unsigned long )(& first));
# 47 "bin-search-crown.c"
      first = middle + 1;
    }
# 46 "bin-search-crown.c"
      else {
      __CrownBranch(82, 33, 0, 47, "bin-search-crown.c");
      {
      __CrownLoad(89, (unsigned long )(& array[middle]), 5, (long long )array[middle],
                  (double )array[middle], (char *)"", 0, (char)0, (char)0);
      __CrownLoad(88, (unsigned long )(& search), 5, (long long )search, (double )search,
                  (char *)"", 0, (char)0, (char)0);
      __CrownApply2(87, 13, 5, (long long )(array[middle] == search), (double )(array[middle] == search));
# 48 "bin-search-crown.c"
      if (array[middle] == search) {
        __CrownBranch(90, 34, 1, 49, "bin-search-crown.c");
        __CrownLoad(92, (unsigned long )(& middle), 5, (long long )middle, (double )middle,
                    (char *)"", 0, (char)0, (char)0);
        __CrownStore(93, (unsigned long )(& __retres5));
# 50 "bin-search-crown.c"
        __retres5 = middle;
# 50 "bin-search-crown.c"
        goto return_label;
      }
# 48 "bin-search-crown.c"
        else {
        __CrownBranch(91, 36, 0, 49, "bin-search-crown.c");
        __CrownLoad(96, (unsigned long )(& middle), 5, (long long )middle, (double )middle,
                    (char *)"", 0, (char)0, (char)0);
        __CrownLoad(95, (unsigned long )0, 5, (long long )1, (double )1, (char *)"",
                    0, (char)0, (char)0);
        __CrownApply2(94, 1, 5, (long long )(middle - 1), (double )(middle - 1));
        __CrownStore(97, (unsigned long )(& last));
# 53 "bin-search-crown.c"
        last = middle - 1;
      }
      }
    }
    }
    __CrownLoad(102, (unsigned long )(& first), 5, (long long )first, (double )first,
                (char *)"", 0, (char)0, (char)0);
    __CrownLoad(101, (unsigned long )(& last), 5, (long long )last, (double )last,
                (char *)"", 0, (char)0, (char)0);
    __CrownApply2(100, 0, 5, (long long )(first + last), (double )(first + last));
    __CrownLoad(99, (unsigned long )0, 5, (long long )2, (double )2, (char *)"", 0,
                (char)0, (char)0);
    __CrownApply2(98, 4, 5, (long long )((first + last) / 2), (double )((first + last) / 2));
    __CrownStore(103, (unsigned long )(& middle));
# 55 "bin-search-crown.c"
    middle = (first + last) / 2;
  }
  while_break: ;
  }
  __CrownLoad(104, (unsigned long )0, 5, (long long )-1, (double )-1, (char *)"",
              0, (char)0, (char)0);
  __CrownStore(105, (unsigned long )(& __retres5));
# 57 "bin-search-crown.c"
  __retres5 = -1;
  return_label:
  {
  __CrownLoad(106, (unsigned long )(& __retres5), 5, (long long )__retres5, (double )__retres5,
              (char *)"", 0, (char)0, (char)0);
  __CrownReturn(107);
# 37 "bin-search-crown.c"
  return (__retres5);
  }
}
}
# 61 "bin-search-crown.c"
int check(int idx , int search )
{
  int i ;
  int __retres5 ;

  {
  __CrownCall(110, 3);
  __CrownStore(109, (unsigned long )(& search));
  __CrownStore(108, (unsigned long )(& idx));
  {
  __CrownLoad(113, (unsigned long )(& idx), 5, (long long )idx, (double )idx, (char *)"",
              0, (char)0, (char)0);
  __CrownLoad(112, (unsigned long )0, 5, (long long )-1, (double )-1, (char *)"",
              0, (char)0, (char)0);
  __CrownApply2(111, 13, 5, (long long )(idx == -1), (double )(idx == -1));
# 63 "bin-search-crown.c"
  if (idx == -1) {
    __CrownBranch(114, 42, 1, 64, "bin-search-crown.c");
    __CrownLoad(116, (unsigned long )0, 5, (long long )0, (double )0, (char *)"",
                0, (char)0, (char)0);
    __CrownStore(117, (unsigned long )(& i));
# 64 "bin-search-crown.c"
    i = 0;
    {
# 64 "bin-search-crown.c"
    while (1) {
      while_continue: ;
      {
      __CrownLoad(120, (unsigned long )(& i), 5, (long long )i, (double )i, (char *)"",
                  0, (char)0, (char)0);
      __CrownLoad(119, (unsigned long )(& n), 5, (long long )n, (double )n, (char *)"",
                  0, (char)0, (char)0);
      __CrownApply2(118, 20, 5, (long long )(i < n), (double )(i < n));
# 64 "bin-search-crown.c"
      if (i < n) {
        __CrownBranch(121, 47, 1, 65, "bin-search-crown.c");

      }
# 64 "bin-search-crown.c"
        else {
        __CrownBranch(122, 48, 0, 65, "bin-search-crown.c");
# 64 "bin-search-crown.c"
        goto while_break;
      }
      }
      {
      __CrownLoad(125, (unsigned long )(& array[i]), 5, (long long )array[i], (double )array[i],
                  (char *)"", 0, (char)0, (char)0);
      __CrownLoad(124, (unsigned long )(& search), 5, (long long )search, (double )search,
                  (char *)"", 0, (char)0, (char)0);
      __CrownApply2(123, 13, 5, (long long )(array[i] == search), (double )(array[i] == search));
# 65 "bin-search-crown.c"
      if (array[i] == search) {
        __CrownBranch(126, 50, 1, 66, "bin-search-crown.c");
        __CrownLoad(128, (unsigned long )0, 5, (long long )0, (double )0, (char *)"",
                    0, (char)0, (char)0);
        __CrownStore(129, (unsigned long )(& __retres5));
# 65 "bin-search-crown.c"
        __retres5 = 0;
# 65 "bin-search-crown.c"
        goto return_label;
      }
# 65 "bin-search-crown.c"
        else {
        __CrownBranch(127, 52, 0, 66, "bin-search-crown.c");

      }
      }
      __CrownLoad(132, (unsigned long )(& i), 5, (long long )i, (double )i, (char *)"",
                  0, (char)0, (char)0);
      __CrownLoad(131, (unsigned long )0, 5, (long long )1, (double )1, (char *)"",
                  0, (char)0, (char)0);
      __CrownApply2(130, 0, 5, (long long )(i + 1), (double )(i + 1));
      __CrownStore(133, (unsigned long )(& i));
# 64 "bin-search-crown.c"
      i ++;
    }
    while_break: ;
    }
    __CrownLoad(134, (unsigned long )0, 5, (long long )1, (double )1, (char *)"",
                0, (char)0, (char)0);
    __CrownStore(135, (unsigned long )(& __retres5));
# 68 "bin-search-crown.c"
    __retres5 = 1;
# 68 "bin-search-crown.c"
    goto return_label;
  }
# 63 "bin-search-crown.c"
    else {
    __CrownBranch(115, 57, 0, 64, "bin-search-crown.c");
    __CrownLoad(138, (unsigned long )(& array[idx]), 5, (long long )array[idx], (double )array[idx],
                (char *)"", 0, (char)0, (char)0);
    __CrownLoad(137, (unsigned long )(& search), 5, (long long )search, (double )search,
                (char *)"", 0, (char)0, (char)0);
    __CrownApply2(136, 13, 5, (long long )(array[idx] == search), (double )(array[idx] == search));
    __CrownStore(139, (unsigned long )(& __retres5));
# 70 "bin-search-crown.c"
    __retres5 = array[idx] == search;
# 70 "bin-search-crown.c"
    goto return_label;
  }
  }
  return_label:
  {
  __CrownLoad(140, (unsigned long )(& __retres5), 5, (long long )__retres5, (double )__retres5,
              (char *)"", 0, (char)0, (char)0);
  __CrownReturn(141);
# 61 "bin-search-crown.c"
  return (__retres5);
  }
}
}
# 73 "bin-search-crown.c"
int check2(void)
{
  int i ;
  int __retres2 ;

  {
  __CrownCall(142, 4);

  __CrownLoad(143, (unsigned long )0, 5, (long long )0, (double )0, (char *)"", 0,
              (char)0, (char)0);
  __CrownStore(144, (unsigned long )(& i));
# 74 "bin-search-crown.c"
  i = 0;
  {
# 74 "bin-search-crown.c"
  while (1) {
    while_continue: ;
    {
    __CrownLoad(147, (unsigned long )(& i), 5, (long long )i, (double )i, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(146, (unsigned long )(& n), 5, (long long )n, (double )n, (char *)"",
                0, (char)0, (char)0);
    __CrownApply2(145, 20, 5, (long long )(i < n), (double )(i < n));
# 74 "bin-search-crown.c"
    if (i < n) {
      __CrownBranch(148, 65, 1, 75, "bin-search-crown.c");

    }
# 74 "bin-search-crown.c"
      else {
      __CrownBranch(149, 66, 0, 75, "bin-search-crown.c");
# 74 "bin-search-crown.c"
      goto while_break;
    }
    }
    {
    __CrownLoad(152, (unsigned long )(& old_array[i]), 5, (long long )old_array[i],
                (double )old_array[i], (char *)"", 0, (char)0, (char)0);
    __CrownLoad(151, (unsigned long )(& array[i]), 5, (long long )array[i], (double )array[i],
                (char *)"", 0, (char)0, (char)0);
    __CrownApply2(150, 14, 5, (long long )(old_array[i] != array[i]), (double )(old_array[i] != array[i]));
# 75 "bin-search-crown.c"
    if (old_array[i] != array[i]) {
      __CrownBranch(153, 68, 1, 76, "bin-search-crown.c");
      __CrownLoad(155, (unsigned long )0, 5, (long long )0, (double )0, (char *)"",
                  0, (char)0, (char)0);
      __CrownStore(156, (unsigned long )(& __retres2));
# 75 "bin-search-crown.c"
      __retres2 = 0;
# 75 "bin-search-crown.c"
      goto return_label;
    }
# 75 "bin-search-crown.c"
      else {
      __CrownBranch(154, 70, 0, 76, "bin-search-crown.c");

    }
    }
    __CrownLoad(159, (unsigned long )(& i), 5, (long long )i, (double )i, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(158, (unsigned long )0, 5, (long long )1, (double )1, (char *)"",
                0, (char)0, (char)0);
    __CrownApply2(157, 0, 5, (long long )(i + 1), (double )(i + 1));
    __CrownStore(160, (unsigned long )(& i));
# 74 "bin-search-crown.c"
    i ++;
  }
  while_break: ;
  }
  __CrownLoad(161, (unsigned long )0, 5, (long long )1, (double )1, (char *)"", 0,
              (char)0, (char)0);
  __CrownStore(162, (unsigned long )(& __retres2));
# 77 "bin-search-crown.c"
  __retres2 = 1;
  return_label:
  {
  __CrownLoad(163, (unsigned long )(& __retres2), 5, (long long )__retres2, (double )__retres2,
              (char *)"", 0, (char)0, (char)0);
  __CrownReturn(164);
# 73 "bin-search-crown.c"
  return (__retres2);
  }
}
}
# 88 "bin-search-crown.c"
int main(void) ;
# 88 "bin-search-crown.c"
static int cnt_symbolic_var___1 = 1;
# 79 "bin-search-crown.c"
int main(void)
{
  int search ;
  int idx ;
  int i ;
  int tmp ;
  int tmp___0 ;
  int __retres6 ;

  {
  __globinit_bin_search_crown();
  __CrownCall(166, 5);
  __CrownClearStack(165);
# 82 "bin-search-crown.c"
  setup_array();
  __CrownClearStack(167);
  __CrownLoad(168, (unsigned long )0, 5, (long long )0, (double )0, (char *)"", 0,
              (char)0, (char)0);
  __CrownStore(169, (unsigned long )(& i));
# 83 "bin-search-crown.c"
  i = 0;
# 83 "bin-search-crown.c"
  while (1) {
    while_continue: ;
    {
    __CrownLoad(172, (unsigned long )(& i), 5, (long long )i, (double )i, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(171, (unsigned long )(& n), 5, (long long )n, (double )n, (char *)"",
                0, (char)0, (char)0);
    __CrownApply2(170, 20, 5, (long long )(i < n), (double )(i < n));
# 83 "bin-search-crown.c"
    if (i < n) {
      __CrownBranch(173, 80, 1, 84, "bin-search-crown.c");

    }
# 83 "bin-search-crown.c"
      else {
      __CrownBranch(174, 81, 0, 84, "bin-search-crown.c");
# 83 "bin-search-crown.c"
      goto while_break;
    }
    }
    __CrownLoad(175, (unsigned long )(& array[i]), 5, (long long )array[i], (double )array[i],
                (char *)"", 0, (char)0, (char)0);
    __CrownStore(176, (unsigned long )(& old_array[i]));
# 83 "bin-search-crown.c"
    old_array[i] = array[i];
    __CrownLoad(179, (unsigned long )(& i), 5, (long long )i, (double )i, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(178, (unsigned long )0, 5, (long long )1, (double )1, (char *)"",
                0, (char)0, (char)0);
    __CrownApply2(177, 0, 5, (long long )(i + 1), (double )(i + 1));
    __CrownStore(180, (unsigned long )(& i));
# 83 "bin-search-crown.c"
    i ++;
  }
  while_break:
# 88 "bin-search-crown.c"
  __CrownInt(& search, cnt_symbolic_var___1, 88, (char *)"bin-search-crown.c", "search");
  __CrownLoad(183, (unsigned long )(& cnt_symbolic_var___1), 5, (long long )cnt_symbolic_var___1,
              (double )cnt_symbolic_var___1, (char *)"", 0, (char)0, (char)0);
  __CrownLoad(182, (unsigned long )0, 5, (long long )1, (double )1, (char *)"", 0,
              (char)0, (char)0);
  __CrownApply2(181, 0, 5, (long long )(cnt_symbolic_var___1 + 1), (double )(cnt_symbolic_var___1 + 1));
  __CrownStore(184, (unsigned long )(& cnt_symbolic_var___1));
# 88 "bin-search-crown.c"
  cnt_symbolic_var___1 ++;
  __CrownLoad(185, (unsigned long )(& search), 5, (long long )search, (double )search,
              (char *)"", 0, (char)0, (char)0);
# 90 "bin-search-crown.c"
  idx = bin_search(search);
  __CrownHandleReturn(187, 5, (long long )idx, (double )idx);
  __CrownStore(186, (unsigned long )(& idx));
  __CrownLoad(188, (unsigned long )(& idx), 5, (long long )idx, (double )idx, (char *)"",
              0, (char)0, (char)0);
  __CrownLoad(189, (unsigned long )(& search), 5, (long long )search, (double )search,
              (char *)"", 0, (char)0, (char)0);
# 94 "bin-search-crown.c"
  tmp = check(idx, search);
  __CrownHandleReturn(191, 5, (long long )tmp, (double )tmp);
  __CrownStore(190, (unsigned long )(& tmp));
  __CrownLoad(192, (unsigned long )(& tmp), 5, (long long )tmp, (double )tmp, (char *)"",
              0, (char)0, (char)0);
# 94 "bin-search-crown.c"
  if (tmp) {
    __CrownBranch(193, 86, 1, 95, "bin-search-crown.c");

  }
# 94 "bin-search-crown.c"
    else {
    __CrownBranch(194, 87, 0, 95, "bin-search-crown.c");
    __CrownLoad(195, (unsigned long )0, 6, (long long )"check(idx,search)", 8, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(196, (unsigned long )0, 6, (long long )"bin-search-crown.c", 8, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(197, (unsigned long )0, 4, (long long )94U, (double )94U, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(198, (unsigned long )0, 6, (long long )"main", 8, (char *)"", 0, (char)0,
                (char)0);
# 94 "bin-search-crown.c"
    __assert_fail("check(idx,search)", "bin-search-crown.c", 94U, "main");
    __CrownClearStack(199);
  }
# 95 "bin-search-crown.c"
  tmp___0 = check2();
  __CrownHandleReturn(201, 5, (long long )tmp___0, (double )tmp___0);
  __CrownStore(200, (unsigned long )(& tmp___0));
  __CrownLoad(202, (unsigned long )(& tmp___0), 5, (long long )tmp___0, (double )tmp___0,
              (char *)"", 0, (char)0, (char)0);
# 95 "bin-search-crown.c"
  if (tmp___0) {
    __CrownBranch(203, 90, 1, 96, "bin-search-crown.c");

  }
# 95 "bin-search-crown.c"
    else {
    __CrownBranch(204, 91, 0, 96, "bin-search-crown.c");
    __CrownLoad(205, (unsigned long )0, 6, (long long )"check2()", 8, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(206, (unsigned long )0, 6, (long long )"bin-search-crown.c", 8, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(207, (unsigned long )0, 4, (long long )95U, (double )95U, (char *)"",
                0, (char)0, (char)0);
    __CrownLoad(208, (unsigned long )0, 6, (long long )"main", 8, (char *)"", 0, (char)0,
                (char)0);
# 95 "bin-search-crown.c"
    __assert_fail("check2()", "bin-search-crown.c", 95U, "main");
    __CrownClearStack(209);
  }
  __CrownLoad(210, (unsigned long )0, 5, (long long )0, (double )0, (char *)"", 0,
              (char)0, (char)0);
  __CrownStore(211, (unsigned long )(& __retres6));
# 97 "bin-search-crown.c"
  __retres6 = 0;
  __CrownLoad(212, (unsigned long )(& __retres6), 5, (long long )__retres6, (double )__retres6,
              (char *)"", 0, (char)0, (char)0);
  __CrownReturn(213);
# 79 "bin-search-crown.c"
  return (__retres6);
}
}
void __globinit_bin_search_crown(void)
{


  {
  __CrownInit(214);
}
}
