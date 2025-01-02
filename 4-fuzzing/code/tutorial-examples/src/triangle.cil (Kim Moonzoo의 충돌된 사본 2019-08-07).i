# 1 "./triangle.cil.c"
# 1 "/mnt/c/Dropbox/classes/CS492A-Fall18/3-crown/code-examples/tutorial-examples/src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./triangle.cil.c"
# 6 "triangle.c"
void __globinit_triangle(void) ;
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
# 125 "/usr/include/string.h"
extern __attribute__((__nothrow__)) char *( __attribute__((__nonnull__(1,2), __leaf__)) strcpy)(char * __restrict __dest ,
                                                                                                 char const * __restrict __src ) ;
# 376 "/home/moonzoo/CROWN-SYM_assume/bin/../include/crown.h"
extern void __CrownInt(int *x , int cnt_sym_var , int ln , char *fname , ...) __attribute__((__crown_skip__)) ;
# 8 "triangle.c"
int main(void) ;
# 8 "triangle.c"
static int cnt_symbolic_var = 1;
# 8 "triangle.c"
int main(void) ;
# 8 "triangle.c"
static int cnt_symbolic_var___0 = 1;
# 8 "triangle.c"
int main(void) ;
# 8 "triangle.c"
static int cnt_symbolic_var___1 = 1;
# 6 "triangle.c"
int main(void)
{
  int a ;
  int b ;
  int c ;
  int match ;
  int result ;
  char triangle_type[20] ;
  int __retres7 ;

  {
  __globinit_triangle();
  __CrownCheckSymbolic(3, "main");
  __CrownCall(2, 1);
  __CrownClearStack(1);
  __CrownLoad(4, (unsigned long )0, 5, (long long )0, (double )0);
  __CrownStore(5, (unsigned long )(& match));
# 7 "triangle.c"
  match = 0;
# 8 "triangle.c"
  __CrownInt(& a, cnt_symbolic_var, 8, (char *)"triangle.c", "a");
  __CrownLoad(8, (unsigned long )(& cnt_symbolic_var), 5, (long long )cnt_symbolic_var,
              (double )cnt_symbolic_var);
  __CrownLoad(7, (unsigned long )0, 5, (long long )1, (double )1);
  __CrownApply2(6, 0, 5, (long long )(cnt_symbolic_var + 1), (double )(cnt_symbolic_var + 1));
  __CrownStore(9, (unsigned long )(& cnt_symbolic_var));
# 8 "triangle.c"
  cnt_symbolic_var ++;
# 8 "triangle.c"
  __CrownInt(& b, cnt_symbolic_var___0, 8, (char *)"triangle.c", "b");
  __CrownLoad(12, (unsigned long )(& cnt_symbolic_var___0), 5, (long long )cnt_symbolic_var___0,
              (double )cnt_symbolic_var___0);
  __CrownLoad(11, (unsigned long )0, 5, (long long )1, (double )1);
  __CrownApply2(10, 0, 5, (long long )(cnt_symbolic_var___0 + 1), (double )(cnt_symbolic_var___0 + 1));
  __CrownStore(13, (unsigned long )(& cnt_symbolic_var___0));
# 8 "triangle.c"
  cnt_symbolic_var___0 ++;
# 8 "triangle.c"
  __CrownInt(& c, cnt_symbolic_var___1, 8, (char *)"triangle.c", "c");
  __CrownLoad(16, (unsigned long )(& cnt_symbolic_var___1), 5, (long long )cnt_symbolic_var___1,
              (double )cnt_symbolic_var___1);
  __CrownLoad(15, (unsigned long )0, 5, (long long )1, (double )1);
  __CrownApply2(14, 0, 5, (long long )(cnt_symbolic_var___1 + 1), (double )(cnt_symbolic_var___1 + 1));
  __CrownStore(17, (unsigned long )(& cnt_symbolic_var___1));
# 8 "triangle.c"
  cnt_symbolic_var___1 ++;
  __CrownLoad(18, (unsigned long )0, 6, (long long )((char const * __restrict )"a,b,c = %d,%d,%d\n"),
              8);
  __CrownLoad(19, (unsigned long )(& a), 5, (long long )a, (double )a);
  __CrownLoad(20, (unsigned long )(& b), 5, (long long )b, (double )b);
  __CrownLoad(21, (unsigned long )(& c), 5, (long long )c, (double )c);
  __CrownSetCallerCalleeName(22, "main", "printf");
# 17 "triangle.c"
  printf((char const * __restrict )"a,b,c = %d,%d,%d\n", a, b, c);
  __CrownEnableSymbolic(24, "main");
  __CrownClearStack(23);
  __CrownLoad(25, (unsigned long )0, 5, (long long )-1, (double )-1);
  __CrownStore(26, (unsigned long )(& result));
# 21 "triangle.c"
  result = -1;
  __CrownLoad(29, (unsigned long )(& a), 5, (long long )a, (double )a);
  __CrownLoad(28, (unsigned long )(& b), 5, (long long )b, (double )b);
  __CrownApply2(27, 13, 5, (long long )(a == b), (double )(a == b));
# 22 "triangle.c"
  if (a == b) {
    __CrownBranch(30, 3, 1, 23, "triangle.c");
    __CrownLoad(34, (unsigned long )(& match), 5, (long long )match, (double )match);
    __CrownLoad(33, (unsigned long )0, 5, (long long )1, (double )1);
    __CrownApply2(32, 0, 5, (long long )(match + 1), (double )(match + 1));
    __CrownStore(35, (unsigned long )(& match));
# 22 "triangle.c"
    match ++;
  }
# 22 "triangle.c"
    else {
    __CrownBranch(31, 4, 0, 23, "triangle.c");

  }
  __CrownLoad(38, (unsigned long )(& a), 5, (long long )a, (double )a);
  __CrownLoad(37, (unsigned long )(& c), 5, (long long )c, (double )c);
  __CrownApply2(36, 13, 5, (long long )(a == c), (double )(a == c));
# 23 "triangle.c"
  if (a == c) {
    __CrownBranch(39, 6, 1, 24, "triangle.c");
    __CrownLoad(43, (unsigned long )(& match), 5, (long long )match, (double )match);
    __CrownLoad(42, (unsigned long )0, 5, (long long )2, (double )2);
    __CrownApply2(41, 0, 5, (long long )(match + 2), (double )(match + 2));
    __CrownStore(44, (unsigned long )(& match));
# 23 "triangle.c"
    match += 2;
  }
# 23 "triangle.c"
    else {
    __CrownBranch(40, 7, 0, 24, "triangle.c");

  }
  __CrownLoad(47, (unsigned long )(& b), 5, (long long )b, (double )b);
  __CrownLoad(46, (unsigned long )(& c), 5, (long long )c, (double )c);
  __CrownApply2(45, 13, 5, (long long )(b == c), (double )(b == c));
# 24 "triangle.c"
  if (b == c) {
    __CrownBranch(48, 9, 1, 25, "triangle.c");
    __CrownLoad(52, (unsigned long )(& match), 5, (long long )match, (double )match);
    __CrownLoad(51, (unsigned long )0, 5, (long long )3, (double )3);
    __CrownApply2(50, 0, 5, (long long )(match + 3), (double )(match + 3));
    __CrownStore(53, (unsigned long )(& match));
# 24 "triangle.c"
    match += 3;
  }
# 24 "triangle.c"
    else {
    __CrownBranch(49, 10, 0, 25, "triangle.c");

  }
  __CrownLoad(56, (unsigned long )(& match), 5, (long long )match, (double )match);
  __CrownLoad(55, (unsigned long )0, 5, (long long )0, (double )0);
  __CrownApply2(54, 13, 5, (long long )(match == 0), (double )(match == 0));
# 25 "triangle.c"
  if (match == 0) {
    __CrownBranch(57, 12, 1, 26, "triangle.c");
    {
    __CrownLoad(63, (unsigned long )(& a), 5, (long long )a, (double )a);
    __CrownLoad(62, (unsigned long )(& b), 5, (long long )b, (double )b);
    __CrownApply2(61, 0, 5, (long long )(a + b), (double )(a + b));
    __CrownLoad(60, (unsigned long )(& c), 5, (long long )c, (double )c);
    __CrownApply2(59, 18, 5, (long long )(a + b <= c), (double )(a + b <= c));
# 26 "triangle.c"
    if (a + b <= c) {
      __CrownBranch(64, 13, 1, 27, "triangle.c");
      __CrownLoad(66, (unsigned long )0, 5, (long long )2, (double )2);
      __CrownStore(67, (unsigned long )(& result));
# 26 "triangle.c"
      result = 2;
    }
# 26 "triangle.c"
      else {
      __CrownBranch(65, 14, 0, 27, "triangle.c");
      {
      __CrownLoad(72, (unsigned long )(& b), 5, (long long )b, (double )b);
      __CrownLoad(71, (unsigned long )(& c), 5, (long long )c, (double )c);
      __CrownApply2(70, 0, 5, (long long )(b + c), (double )(b + c));
      __CrownLoad(69, (unsigned long )(& a), 5, (long long )a, (double )a);
      __CrownApply2(68, 18, 5, (long long )(b + c <= a), (double )(b + c <= a));
# 27 "triangle.c"
      if (b + c <= a) {
        __CrownBranch(73, 15, 1, 28, "triangle.c");
        __CrownLoad(75, (unsigned long )0, 5, (long long )2, (double )2);
        __CrownStore(76, (unsigned long )(& result));
# 27 "triangle.c"
        result = 2;
      }
# 27 "triangle.c"
        else {
        __CrownBranch(74, 16, 0, 28, "triangle.c");
        {
        __CrownLoad(81, (unsigned long )(& a), 5, (long long )a, (double )a);
        __CrownLoad(80, (unsigned long )(& c), 5, (long long )c, (double )c);
        __CrownApply2(79, 0, 5, (long long )(a + c), (double )(a + c));
        __CrownLoad(78, (unsigned long )(& b), 5, (long long )b, (double )b);
        __CrownApply2(77, 18, 5, (long long )(a + c <= b), (double )(a + c <= b));
# 28 "triangle.c"
        if (a + c <= b) {
          __CrownBranch(82, 17, 1, 29, "triangle.c");
          __CrownLoad(84, (unsigned long )0, 5, (long long )2, (double )2);
          __CrownStore(85, (unsigned long )(& result));
# 28 "triangle.c"
          result = 2;
        }
# 28 "triangle.c"
          else {
          __CrownBranch(83, 18, 0, 29, "triangle.c");
          __CrownLoad(86, (unsigned long )0, 5, (long long )3, (double )3);
          __CrownStore(87, (unsigned long )(& result));
# 29 "triangle.c"
          result = 3;
        }
        }
      }
      }
    }
    }
  }
# 25 "triangle.c"
    else {
    __CrownBranch(58, 19, 0, 26, "triangle.c");
    {
    __CrownLoad(90, (unsigned long )(& match), 5, (long long )match, (double )match);
    __CrownLoad(89, (unsigned long )0, 5, (long long )1, (double )1);
    __CrownApply2(88, 13, 5, (long long )(match == 1), (double )(match == 1));
# 31 "triangle.c"
    if (match == 1) {
      __CrownBranch(91, 20, 1, 32, "triangle.c");
      {
      __CrownLoad(97, (unsigned long )(& a), 5, (long long )a, (double )a);
      __CrownLoad(96, (unsigned long )(& b), 5, (long long )b, (double )b);
      __CrownApply2(95, 0, 5, (long long )(a + b), (double )(a + b));
      __CrownLoad(94, (unsigned long )(& c), 5, (long long )c, (double )c);
      __CrownApply2(93, 18, 5, (long long )(a + b <= c), (double )(a + b <= c));
# 32 "triangle.c"
      if (a + b <= c) {
        __CrownBranch(98, 21, 1, 33, "triangle.c");
        __CrownLoad(100, (unsigned long )0, 5, (long long )2, (double )2);
        __CrownStore(101, (unsigned long )(& result));
# 32 "triangle.c"
        result = 2;
      }
# 32 "triangle.c"
        else {
        __CrownBranch(99, 22, 0, 33, "triangle.c");
        __CrownLoad(102, (unsigned long )0, 5, (long long )1, (double )1);
        __CrownStore(103, (unsigned long )(& result));
# 33 "triangle.c"
        result = 1;
      }
      }
    }
# 31 "triangle.c"
      else {
      __CrownBranch(92, 23, 0, 32, "triangle.c");
      {
      __CrownLoad(106, (unsigned long )(& match), 5, (long long )match, (double )match);
      __CrownLoad(105, (unsigned long )0, 5, (long long )2, (double )2);
      __CrownApply2(104, 13, 5, (long long )(match == 2), (double )(match == 2));
# 35 "triangle.c"
      if (match == 2) {
        __CrownBranch(107, 24, 1, 36, "triangle.c");
        {
        __CrownLoad(113, (unsigned long )(& a), 5, (long long )a, (double )a);
        __CrownLoad(112, (unsigned long )(& c), 5, (long long )c, (double )c);
        __CrownApply2(111, 0, 5, (long long )(a + c), (double )(a + c));
        __CrownLoad(110, (unsigned long )(& b), 5, (long long )b, (double )b);
        __CrownApply2(109, 18, 5, (long long )(a + c <= b), (double )(a + c <= b));
# 36 "triangle.c"
        if (a + c <= b) {
          __CrownBranch(114, 25, 1, 37, "triangle.c");
          __CrownLoad(116, (unsigned long )0, 5, (long long )2, (double )2);
          __CrownStore(117, (unsigned long )(& result));
# 36 "triangle.c"
          result = 2;
        }
# 36 "triangle.c"
          else {
          __CrownBranch(115, 26, 0, 37, "triangle.c");
          __CrownLoad(118, (unsigned long )0, 5, (long long )1, (double )1);
          __CrownStore(119, (unsigned long )(& result));
# 37 "triangle.c"
          result = 1;
        }
        }
      }
# 35 "triangle.c"
        else {
        __CrownBranch(108, 27, 0, 36, "triangle.c");
        {
        __CrownLoad(122, (unsigned long )(& match), 5, (long long )match, (double )match);
        __CrownLoad(121, (unsigned long )0, 5, (long long )3, (double )3);
        __CrownApply2(120, 13, 5, (long long )(match == 3), (double )(match == 3));
# 39 "triangle.c"
        if (match == 3) {
          __CrownBranch(123, 28, 1, 40, "triangle.c");
          {
          __CrownLoad(129, (unsigned long )(& b), 5, (long long )b, (double )b);
          __CrownLoad(128, (unsigned long )(& c), 5, (long long )c, (double )c);
          __CrownApply2(127, 0, 5, (long long )(b + c), (double )(b + c));
          __CrownLoad(126, (unsigned long )(& a), 5, (long long )a, (double )a);
          __CrownApply2(125, 18, 5, (long long )(b + c <= a), (double )(b + c <= a));
# 40 "triangle.c"
          if (b + c <= a) {
            __CrownBranch(130, 29, 1, 41, "triangle.c");
            __CrownLoad(132, (unsigned long )0, 5, (long long )2, (double )2);
            __CrownStore(133, (unsigned long )(& result));
# 40 "triangle.c"
            result = 2;
          }
# 40 "triangle.c"
            else {
            __CrownBranch(131, 30, 0, 41, "triangle.c");
            __CrownLoad(134, (unsigned long )0, 5, (long long )1, (double )1);
            __CrownStore(135, (unsigned long )(& result));
# 41 "triangle.c"
            result = 1;
          }
          }
        }
# 39 "triangle.c"
          else {
          __CrownBranch(124, 31, 0, 40, "triangle.c");
          __CrownLoad(136, (unsigned long )0, 5, (long long )0, (double )0);
          __CrownStore(137, (unsigned long )(& result));
# 42 "triangle.c"
          result = 0;
        }
        }
      }
      }
    }
    }
  }
  __CrownLoad(140, (unsigned long )(& result), 5, (long long )result, (double )result);
  __CrownLoad(139, (unsigned long )0, 5, (long long )0, (double )0);
  __CrownApply2(138, 13, 5, (long long )(result == 0), (double )(result == 0));
# 47 "triangle.c"
  if (result == 0) {
    __CrownBranch(141, 34, 1, 48, "triangle.c");
# 47 "triangle.c"
    goto case_0;
  }
# 47 "triangle.c"
    else {
    __CrownBranch(142, 35, 0, 48, "triangle.c");

  }
  __CrownLoad(145, (unsigned long )(& result), 5, (long long )result, (double )result);
  __CrownLoad(144, (unsigned long )0, 5, (long long )1, (double )1);
  __CrownApply2(143, 13, 5, (long long )(result == 1), (double )(result == 1));
# 48 "triangle.c"
  if (result == 1) {
    __CrownBranch(146, 37, 1, 49, "triangle.c");
# 48 "triangle.c"
    goto case_1;
  }
# 48 "triangle.c"
    else {
    __CrownBranch(147, 38, 0, 49, "triangle.c");

  }
  __CrownLoad(150, (unsigned long )(& result), 5, (long long )result, (double )result);
  __CrownLoad(149, (unsigned long )0, 5, (long long )2, (double )2);
  __CrownApply2(148, 13, 5, (long long )(result == 2), (double )(result == 2));
# 49 "triangle.c"
  if (result == 2) {
    __CrownBranch(151, 40, 1, 50, "triangle.c");
# 49 "triangle.c"
    goto case_2;
  }
# 49 "triangle.c"
    else {
    __CrownBranch(152, 41, 0, 50, "triangle.c");

  }
  __CrownLoad(155, (unsigned long )(& result), 5, (long long )result, (double )result);
  __CrownLoad(154, (unsigned long )0, 5, (long long )3, (double )3);
  __CrownApply2(153, 13, 5, (long long )(result == 3), (double )(result == 3));
# 50 "triangle.c"
  if (result == 3) {
    __CrownBranch(156, 43, 1, 51, "triangle.c");
# 50 "triangle.c"
    goto case_3;
  }
# 50 "triangle.c"
    else {
    __CrownBranch(157, 44, 0, 51, "triangle.c");

  }
# 46 "triangle.c"
  goto switch_break;
  case_0:
  __CrownLoad(159, (unsigned long )0, 6, (long long )(triangle_type), 8);
  __CrownApply1(158, 27, 6, (long long )((char * __restrict )(triangle_type)), 8);
  __CrownLoad(160, (unsigned long )0, 6, (long long )((char const * __restrict )"an equilateral"),
              8);
  __CrownSetCallerCalleeName(161, "main", "strcpy");
# 47 "triangle.c"
  strcpy((char * __restrict )(triangle_type), (char const * __restrict )"an equilateral");
  __CrownEnableSymbolic(163, "main");
  __CrownClearStack(162);
# 47 "triangle.c"
  goto switch_break;
  case_1:
  __CrownLoad(165, (unsigned long )0, 6, (long long )(triangle_type), 8);
  __CrownApply1(164, 27, 6, (long long )((char * __restrict )(triangle_type)), 8);
  __CrownLoad(166, (unsigned long )0, 6, (long long )((char const * __restrict )"an isoscele"),
              8);
  __CrownSetCallerCalleeName(167, "main", "strcpy");
# 48 "triangle.c"
  strcpy((char * __restrict )(triangle_type), (char const * __restrict )"an isoscele");
  __CrownEnableSymbolic(169, "main");
  __CrownClearStack(168);
# 48 "triangle.c"
  goto switch_break;
  case_2:
  __CrownLoad(171, (unsigned long )0, 6, (long long )(triangle_type), 8);
  __CrownApply1(170, 27, 6, (long long )((char * __restrict )(triangle_type)), 8);
  __CrownLoad(172, (unsigned long )0, 6, (long long )((char const * __restrict )"not a triangle"),
              8);
  __CrownSetCallerCalleeName(173, "main", "strcpy");
# 49 "triangle.c"
  strcpy((char * __restrict )(triangle_type), (char const * __restrict )"not a triangle");
  __CrownEnableSymbolic(175, "main");
  __CrownClearStack(174);
# 49 "triangle.c"
  goto switch_break;
  case_3:
  __CrownLoad(177, (unsigned long )0, 6, (long long )(triangle_type), 8);
  __CrownApply1(176, 27, 6, (long long )((char * __restrict )(triangle_type)), 8);
  __CrownLoad(178, (unsigned long )0, 6, (long long )((char const * __restrict )"a scalene"),
              8);
  __CrownSetCallerCalleeName(179, "main", "strcpy");
# 50 "triangle.c"
  strcpy((char * __restrict )(triangle_type), (char const * __restrict )"a scalene");
  __CrownEnableSymbolic(181, "main");
  __CrownClearStack(180);
# 50 "triangle.c"
  goto switch_break;
# 51 "triangle.c"
  goto switch_break;
  switch_break:
  __CrownLoad(182, (unsigned long )0, 6, (long long )((char const * __restrict )"This triangle is %s.\n"),
              8);
  __CrownLoad(183, (unsigned long )0, 6, (long long )(triangle_type), 8);
  __CrownSetCallerCalleeName(184, "main", "printf");
# 53 "triangle.c"
  printf((char const * __restrict )"This triangle is %s.\n", triangle_type);
  __CrownEnableSymbolic(186, "main");
  __CrownClearStack(185);
  __CrownLoad(187, (unsigned long )0, 5, (long long )0, (double )0);
  __CrownStore(188, (unsigned long )(& __retres7));
# 54 "triangle.c"
  __retres7 = 0;
  __CrownLoad(189, (unsigned long )(& __retres7), 5, (long long )__retres7, (double )__retres7);
  __CrownReturn(190);
# 6 "triangle.c"
  return (__retres7);
}
}
void __globinit_triangle(void)
{


  {
  __CrownInit(191);
}
}
