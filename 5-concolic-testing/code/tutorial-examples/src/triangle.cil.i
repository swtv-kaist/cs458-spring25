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
# 216 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h"
typedef unsigned long size_t;
# 131 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __off_t;
# 132 "/usr/include/x86_64-linux-gnu/bits/types.h"
typedef long __off64_t;
# 44 "/usr/include/stdio.h"
struct _IO_FILE;
# 44 "/usr/include/stdio.h"
struct _IO_FILE;
# 48 "/usr/include/stdio.h"
typedef struct _IO_FILE FILE;
# 144 "/usr/include/libio.h"
struct _IO_FILE;
# 150 "/usr/include/libio.h"
typedef void _IO_lock_t;
# 156 "/usr/include/libio.h"
struct _IO_marker {
   struct _IO_marker *_next ;
   struct _IO_FILE *_sbuf ;
   int _pos ;
};
# 241 "/usr/include/libio.h"
struct _IO_FILE {
   int _flags ;
   char *_IO_read_ptr ;
   char *_IO_read_end ;
   char *_IO_read_base ;
   char *_IO_write_base ;
   char *_IO_write_ptr ;
   char *_IO_write_end ;
   char *_IO_buf_base ;
   char *_IO_buf_end ;
   char *_IO_save_base ;
   char *_IO_backup_base ;
   char *_IO_save_end ;
   struct _IO_marker *_markers ;
   struct _IO_FILE *_chain ;
   int _fileno ;
   int _flags2 ;
   __off_t _old_offset ;
   unsigned short _cur_column ;
   signed char _vtable_offset ;
   char _shortbuf[1] ;
   _IO_lock_t *_lock ;
   __off64_t _offset ;
   void *__pad1 ;
   void *__pad2 ;
   void *__pad3 ;
   void *__pad4 ;
   size_t __pad5 ;
   int _mode ;
   char _unused2[(15UL * sizeof(int ) - 4UL * sizeof(void *)) - sizeof(size_t )] ;
};
# 543 "/usr/include/stdlib.h"
extern __attribute__((__nothrow__, __noreturn__)) void ( __attribute__((__leaf__)) exit)(int __status ) ;
# 170 "/usr/include/stdio.h"
extern struct _IO_FILE *stderr ;
# 237 "/usr/include/stdio.h"
extern int fclose(FILE *__stream ) ;
# 272 "/usr/include/stdio.h"
extern FILE *fopen(char const * __restrict __filename , char const * __restrict __modes ) ;
# 356 "/usr/include/stdio.h"
extern int fprintf(FILE * __restrict __stream , char const * __restrict __format
                   , ...) ;
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
  FILE *f ;
  FILE *tmp ;
  FILE *f___0 ;
  FILE *tmp___0 ;
  FILE *f___1 ;
  FILE *tmp___1 ;
  int result ;
  char triangle_type[20] ;
  int __retres13 ;

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
# 9 "triangle.c"
  while (1) {
    while_continue: ;
    {
    __CrownLoad(20, (unsigned long )0, 5, (long long )-10, (double )-10);
    __CrownLoad(19, (unsigned long )(& a), 5, (long long )a, (double )a);
    __CrownApply2(18, 20, 5, (long long )(-10 < a), (double )(-10 < a));
# 9 "triangle.c"
    if (-10 < a) {
      __CrownBranch(21, 6, 1, 10, "triangle.c");
      {
      __CrownLoad(25, (unsigned long )(& a), 5, (long long )a, (double )a);
      __CrownLoad(24, (unsigned long )0, 5, (long long )10, (double )10);
      __CrownApply2(23, 20, 5, (long long )(a < 10), (double )(a < 10));
# 9 "triangle.c"
      if (a < 10) {
        __CrownBranch(26, 7, 1, 10, "triangle.c");

      }
# 9 "triangle.c"
        else {
        __CrownBranch(27, 8, 0, 10, "triangle.c");
# 9 "triangle.c"
        goto _L;
      }
      }
    }
# 9 "triangle.c"
      else {
      __CrownBranch(22, 9, 0, 10, "triangle.c");
      _L:
      __CrownLoad(29, (unsigned long )(& stderr), 6, (long long )stderr, 8);
      __CrownApply1(28, 27, 6, (long long )((FILE * __restrict )stderr), 8);
      __CrownLoad(30, (unsigned long )0, 6, (long long )((char const * __restrict )"### SYM_assume(%s) is violated at Line %d (%s in %s) ###\n"),
                  8);
      __CrownLoad(31, (unsigned long )0, 6, (long long )"-10 <a && a < 10", 8);
      __CrownLoad(32, (unsigned long )0, 5, (long long )9, (double )9);
      __CrownLoad(33, (unsigned long )0, 6, (long long )"main", 8);
      __CrownLoad(34, (unsigned long )0, 6, (long long )"triangle.c", 8);
      __CrownSetCallerCalleeName(35, "main", "fprintf");
# 9 "triangle.c"
      fprintf((FILE * __restrict )stderr, (char const * __restrict )"### SYM_assume(%s) is violated at Line %d (%s in %s) ###\n",
              "-10 <a && a < 10", 9, "main", "triangle.c");
      __CrownEnableSymbolic(37, "main");
      __CrownClearStack(36);
      __CrownLoad(38, (unsigned long )0, 6, (long long )((char const * __restrict )"__SYM_assume_violated"),
                  8);
      __CrownLoad(39, (unsigned long )0, 6, (long long )((char const * __restrict )"w"),
                  8);
      __CrownSetCallerCalleeName(40, "main", "fopen");
# 9 "triangle.c"
      tmp = fopen((char const * __restrict )"__SYM_assume_violated", (char const * __restrict )"w");
      __CrownEnableSymbolic(43, "main");
      __CrownHandleReturn(42, 6, (long long )tmp, 8);
      __CrownStore(41, (unsigned long )(& tmp));
      __CrownLoad(44, (unsigned long )(& tmp), 6, (long long )tmp, 8);
      __CrownStore(45, (unsigned long )(& f));
# 9 "triangle.c"
      f = tmp;
      {
      __CrownLoad(47, (unsigned long )(& f), 6, (long long )f, 8);
      __CrownApply1(46, 26, 5, (long long )(! f), (double )(! f));
# 9 "triangle.c"
      if (! f) {
        __CrownBranch(48, 11, 1, 10, "triangle.c");
        __CrownLoad(51, (unsigned long )(& stderr), 6, (long long )stderr, 8);
        __CrownApply1(50, 27, 6, (long long )((FILE * __restrict )stderr), 8);
        __CrownLoad(52, (unsigned long )0, 6, (long long )((char const * __restrict )"### %s file cannot be created ###\n"),
                    8);
        __CrownLoad(53, (unsigned long )0, 6, (long long )"__SYM_assume_violated",
                    8);
        __CrownSetCallerCalleeName(54, "main", "fprintf");
# 9 "triangle.c"
        fprintf((FILE * __restrict )stderr, (char const * __restrict )"### %s file cannot be created ###\n",
                "__SYM_assume_violated");
        __CrownEnableSymbolic(56, "main");
        __CrownClearStack(55);
      }
# 9 "triangle.c"
        else {
        __CrownBranch(49, 12, 0, 10, "triangle.c");
        __CrownLoad(57, (unsigned long )(& f), 6, (long long )f, 8);
        __CrownSetCallerCalleeName(58, "main", "fclose");
# 9 "triangle.c"
        fclose(f);
        __CrownEnableSymbolic(60, "main");
        __CrownClearStack(59);
      }
      }
      __CrownLoad(61, (unsigned long )0, 5, (long long )1, (double )1);
      __CrownSetCallerCalleeName(62, "main", "exit");
# 9 "triangle.c"
      exit(1);
      __CrownEnableSymbolic(64, "main");
      __CrownClearStack(63);
    }
    }
# 9 "triangle.c"
    goto while_break;
  }
  while_break: ;
# 10 "triangle.c"
  while (1) {
    while_continue___0: ;
    {
    __CrownLoad(67, (unsigned long )0, 5, (long long )-10, (double )-10);
    __CrownLoad(66, (unsigned long )(& b), 5, (long long )b, (double )b);
    __CrownApply2(65, 20, 5, (long long )(-10 < b), (double )(-10 < b));
# 10 "triangle.c"
    if (-10 < b) {
      __CrownBranch(68, 20, 1, 11, "triangle.c");
      {
      __CrownLoad(72, (unsigned long )(& b), 5, (long long )b, (double )b);
      __CrownLoad(71, (unsigned long )0, 5, (long long )10, (double )10);
      __CrownApply2(70, 20, 5, (long long )(b < 10), (double )(b < 10));
# 10 "triangle.c"
      if (b < 10) {
        __CrownBranch(73, 21, 1, 11, "triangle.c");

      }
# 10 "triangle.c"
        else {
        __CrownBranch(74, 22, 0, 11, "triangle.c");
# 10 "triangle.c"
        goto _L___0;
      }
      }
    }
# 10 "triangle.c"
      else {
      __CrownBranch(69, 23, 0, 11, "triangle.c");
      _L___0:
      __CrownLoad(76, (unsigned long )(& stderr), 6, (long long )stderr, 8);
      __CrownApply1(75, 27, 6, (long long )((FILE * __restrict )stderr), 8);
      __CrownLoad(77, (unsigned long )0, 6, (long long )((char const * __restrict )"### SYM_assume(%s) is violated at Line %d (%s in %s) ###\n"),
                  8);
      __CrownLoad(78, (unsigned long )0, 6, (long long )"-10 < b && b < 10", 8);
      __CrownLoad(79, (unsigned long )0, 5, (long long )10, (double )10);
      __CrownLoad(80, (unsigned long )0, 6, (long long )"main", 8);
      __CrownLoad(81, (unsigned long )0, 6, (long long )"triangle.c", 8);
      __CrownSetCallerCalleeName(82, "main", "fprintf");
# 10 "triangle.c"
      fprintf((FILE * __restrict )stderr, (char const * __restrict )"### SYM_assume(%s) is violated at Line %d (%s in %s) ###\n",
              "-10 < b && b < 10", 10, "main", "triangle.c");
      __CrownEnableSymbolic(84, "main");
      __CrownClearStack(83);
      __CrownLoad(85, (unsigned long )0, 6, (long long )((char const * __restrict )"__SYM_assume_violated"),
                  8);
      __CrownLoad(86, (unsigned long )0, 6, (long long )((char const * __restrict )"w"),
                  8);
      __CrownSetCallerCalleeName(87, "main", "fopen");
# 10 "triangle.c"
      tmp___0 = fopen((char const * __restrict )"__SYM_assume_violated", (char const * __restrict )"w");
      __CrownEnableSymbolic(90, "main");
      __CrownHandleReturn(89, 6, (long long )tmp___0, 8);
      __CrownStore(88, (unsigned long )(& tmp___0));
      __CrownLoad(91, (unsigned long )(& tmp___0), 6, (long long )tmp___0, 8);
      __CrownStore(92, (unsigned long )(& f___0));
# 10 "triangle.c"
      f___0 = tmp___0;
      {
      __CrownLoad(94, (unsigned long )(& f___0), 6, (long long )f___0, 8);
      __CrownApply1(93, 26, 5, (long long )(! f___0), (double )(! f___0));
# 10 "triangle.c"
      if (! f___0) {
        __CrownBranch(95, 25, 1, 11, "triangle.c");
        __CrownLoad(98, (unsigned long )(& stderr), 6, (long long )stderr, 8);
        __CrownApply1(97, 27, 6, (long long )((FILE * __restrict )stderr), 8);
        __CrownLoad(99, (unsigned long )0, 6, (long long )((char const * __restrict )"### %s file cannot be created ###\n"),
                    8);
        __CrownLoad(100, (unsigned long )0, 6, (long long )"__SYM_assume_violated",
                    8);
        __CrownSetCallerCalleeName(101, "main", "fprintf");
# 10 "triangle.c"
        fprintf((FILE * __restrict )stderr, (char const * __restrict )"### %s file cannot be created ###\n",
                "__SYM_assume_violated");
        __CrownEnableSymbolic(103, "main");
        __CrownClearStack(102);
      }
# 10 "triangle.c"
        else {
        __CrownBranch(96, 26, 0, 11, "triangle.c");
        __CrownLoad(104, (unsigned long )(& f___0), 6, (long long )f___0, 8);
        __CrownSetCallerCalleeName(105, "main", "fclose");
# 10 "triangle.c"
        fclose(f___0);
        __CrownEnableSymbolic(107, "main");
        __CrownClearStack(106);
      }
      }
      __CrownLoad(108, (unsigned long )0, 5, (long long )1, (double )1);
      __CrownSetCallerCalleeName(109, "main", "exit");
# 10 "triangle.c"
      exit(1);
      __CrownEnableSymbolic(111, "main");
      __CrownClearStack(110);
    }
    }
# 10 "triangle.c"
    goto while_break___0;
  }
  while_break___0: ;
# 11 "triangle.c"
  while (1) {
    while_continue___1: ;
    {
    __CrownLoad(114, (unsigned long )0, 5, (long long )-10, (double )-10);
    __CrownLoad(113, (unsigned long )(& c), 5, (long long )c, (double )c);
    __CrownApply2(112, 20, 5, (long long )(-10 < c), (double )(-10 < c));
# 11 "triangle.c"
    if (-10 < c) {
      __CrownBranch(115, 34, 1, 12, "triangle.c");
      {
      __CrownLoad(119, (unsigned long )(& c), 5, (long long )c, (double )c);
      __CrownLoad(118, (unsigned long )0, 5, (long long )10, (double )10);
      __CrownApply2(117, 20, 5, (long long )(c < 10), (double )(c < 10));
# 11 "triangle.c"
      if (c < 10) {
        __CrownBranch(120, 35, 1, 12, "triangle.c");

      }
# 11 "triangle.c"
        else {
        __CrownBranch(121, 36, 0, 12, "triangle.c");
# 11 "triangle.c"
        goto _L___1;
      }
      }
    }
# 11 "triangle.c"
      else {
      __CrownBranch(116, 37, 0, 12, "triangle.c");
      _L___1:
      __CrownLoad(123, (unsigned long )(& stderr), 6, (long long )stderr, 8);
      __CrownApply1(122, 27, 6, (long long )((FILE * __restrict )stderr), 8);
      __CrownLoad(124, (unsigned long )0, 6, (long long )((char const * __restrict )"### SYM_assume(%s) is violated at Line %d (%s in %s) ###\n"),
                  8);
      __CrownLoad(125, (unsigned long )0, 6, (long long )"-10 < c && c < 10", 8);
      __CrownLoad(126, (unsigned long )0, 5, (long long )11, (double )11);
      __CrownLoad(127, (unsigned long )0, 6, (long long )"main", 8);
      __CrownLoad(128, (unsigned long )0, 6, (long long )"triangle.c", 8);
      __CrownSetCallerCalleeName(129, "main", "fprintf");
# 11 "triangle.c"
      fprintf((FILE * __restrict )stderr, (char const * __restrict )"### SYM_assume(%s) is violated at Line %d (%s in %s) ###\n",
              "-10 < c && c < 10", 11, "main", "triangle.c");
      __CrownEnableSymbolic(131, "main");
      __CrownClearStack(130);
      __CrownLoad(132, (unsigned long )0, 6, (long long )((char const * __restrict )"__SYM_assume_violated"),
                  8);
      __CrownLoad(133, (unsigned long )0, 6, (long long )((char const * __restrict )"w"),
                  8);
      __CrownSetCallerCalleeName(134, "main", "fopen");
# 11 "triangle.c"
      tmp___1 = fopen((char const * __restrict )"__SYM_assume_violated", (char const * __restrict )"w");
      __CrownEnableSymbolic(137, "main");
      __CrownHandleReturn(136, 6, (long long )tmp___1, 8);
      __CrownStore(135, (unsigned long )(& tmp___1));
      __CrownLoad(138, (unsigned long )(& tmp___1), 6, (long long )tmp___1, 8);
      __CrownStore(139, (unsigned long )(& f___1));
# 11 "triangle.c"
      f___1 = tmp___1;
      {
      __CrownLoad(141, (unsigned long )(& f___1), 6, (long long )f___1, 8);
      __CrownApply1(140, 26, 5, (long long )(! f___1), (double )(! f___1));
# 11 "triangle.c"
      if (! f___1) {
        __CrownBranch(142, 39, 1, 12, "triangle.c");
        __CrownLoad(145, (unsigned long )(& stderr), 6, (long long )stderr, 8);
        __CrownApply1(144, 27, 6, (long long )((FILE * __restrict )stderr), 8);
        __CrownLoad(146, (unsigned long )0, 6, (long long )((char const * __restrict )"### %s file cannot be created ###\n"),
                    8);
        __CrownLoad(147, (unsigned long )0, 6, (long long )"__SYM_assume_violated",
                    8);
        __CrownSetCallerCalleeName(148, "main", "fprintf");
# 11 "triangle.c"
        fprintf((FILE * __restrict )stderr, (char const * __restrict )"### %s file cannot be created ###\n",
                "__SYM_assume_violated");
        __CrownEnableSymbolic(150, "main");
        __CrownClearStack(149);
      }
# 11 "triangle.c"
        else {
        __CrownBranch(143, 40, 0, 12, "triangle.c");
        __CrownLoad(151, (unsigned long )(& f___1), 6, (long long )f___1, 8);
        __CrownSetCallerCalleeName(152, "main", "fclose");
# 11 "triangle.c"
        fclose(f___1);
        __CrownEnableSymbolic(154, "main");
        __CrownClearStack(153);
      }
      }
      __CrownLoad(155, (unsigned long )0, 5, (long long )1, (double )1);
      __CrownSetCallerCalleeName(156, "main", "exit");
# 11 "triangle.c"
      exit(1);
      __CrownEnableSymbolic(158, "main");
      __CrownClearStack(157);
    }
    }
# 11 "triangle.c"
    goto while_break___1;
  }
  while_break___1:
  __CrownLoad(159, (unsigned long )0, 6, (long long )((char const * __restrict )"a,b,c = %d,%d,%d\n"),
              8);
  __CrownLoad(160, (unsigned long )(& a), 5, (long long )a, (double )a);
  __CrownLoad(161, (unsigned long )(& b), 5, (long long )b, (double )b);
  __CrownLoad(162, (unsigned long )(& c), 5, (long long )c, (double )c);
  __CrownSetCallerCalleeName(163, "main", "printf");
# 20 "triangle.c"
  printf((char const * __restrict )"a,b,c = %d,%d,%d\n", a, b, c);
  __CrownEnableSymbolic(165, "main");
  __CrownClearStack(164);
  __CrownLoad(166, (unsigned long )0, 5, (long long )-1, (double )-1);
  __CrownStore(167, (unsigned long )(& result));
# 24 "triangle.c"
  result = -1;
  __CrownLoad(170, (unsigned long )(& a), 5, (long long )a, (double )a);
  __CrownLoad(169, (unsigned long )(& b), 5, (long long )b, (double )b);
  __CrownApply2(168, 13, 5, (long long )(a == b), (double )(a == b));
# 25 "triangle.c"
  if (a == b) {
    __CrownBranch(171, 46, 1, 26, "triangle.c");
    __CrownLoad(175, (unsigned long )(& match), 5, (long long )match, (double )match);
    __CrownLoad(174, (unsigned long )0, 5, (long long )1, (double )1);
    __CrownApply2(173, 0, 5, (long long )(match + 1), (double )(match + 1));
    __CrownStore(176, (unsigned long )(& match));
# 25 "triangle.c"
    match ++;
  }
# 25 "triangle.c"
    else {
    __CrownBranch(172, 47, 0, 26, "triangle.c");

  }
  __CrownLoad(179, (unsigned long )(& a), 5, (long long )a, (double )a);
  __CrownLoad(178, (unsigned long )(& c), 5, (long long )c, (double )c);
  __CrownApply2(177, 13, 5, (long long )(a == c), (double )(a == c));
# 26 "triangle.c"
  if (a == c) {
    __CrownBranch(180, 49, 1, 27, "triangle.c");
    __CrownLoad(184, (unsigned long )(& match), 5, (long long )match, (double )match);
    __CrownLoad(183, (unsigned long )0, 5, (long long )2, (double )2);
    __CrownApply2(182, 0, 5, (long long )(match + 2), (double )(match + 2));
    __CrownStore(185, (unsigned long )(& match));
# 26 "triangle.c"
    match += 2;
  }
# 26 "triangle.c"
    else {
    __CrownBranch(181, 50, 0, 27, "triangle.c");

  }
  __CrownLoad(188, (unsigned long )(& b), 5, (long long )b, (double )b);
  __CrownLoad(187, (unsigned long )(& c), 5, (long long )c, (double )c);
  __CrownApply2(186, 13, 5, (long long )(b == c), (double )(b == c));
# 27 "triangle.c"
  if (b == c) {
    __CrownBranch(189, 52, 1, 28, "triangle.c");
    __CrownLoad(193, (unsigned long )(& match), 5, (long long )match, (double )match);
    __CrownLoad(192, (unsigned long )0, 5, (long long )3, (double )3);
    __CrownApply2(191, 0, 5, (long long )(match + 3), (double )(match + 3));
    __CrownStore(194, (unsigned long )(& match));
# 27 "triangle.c"
    match += 3;
  }
# 27 "triangle.c"
    else {
    __CrownBranch(190, 53, 0, 28, "triangle.c");

  }
  __CrownLoad(197, (unsigned long )(& match), 5, (long long )match, (double )match);
  __CrownLoad(196, (unsigned long )0, 5, (long long )0, (double )0);
  __CrownApply2(195, 13, 5, (long long )(match == 0), (double )(match == 0));
# 28 "triangle.c"
  if (match == 0) {
    __CrownBranch(198, 55, 1, 29, "triangle.c");
    {
    __CrownLoad(204, (unsigned long )(& a), 5, (long long )a, (double )a);
    __CrownLoad(203, (unsigned long )(& b), 5, (long long )b, (double )b);
    __CrownApply2(202, 0, 5, (long long )(a + b), (double )(a + b));
    __CrownLoad(201, (unsigned long )(& c), 5, (long long )c, (double )c);
    __CrownApply2(200, 18, 5, (long long )(a + b <= c), (double )(a + b <= c));
# 29 "triangle.c"
    if (a + b <= c) {
      __CrownBranch(205, 56, 1, 30, "triangle.c");
      __CrownLoad(207, (unsigned long )0, 5, (long long )2, (double )2);
      __CrownStore(208, (unsigned long )(& result));
# 29 "triangle.c"
      result = 2;
    }
# 29 "triangle.c"
      else {
      __CrownBranch(206, 57, 0, 30, "triangle.c");
      {
      __CrownLoad(213, (unsigned long )(& b), 5, (long long )b, (double )b);
      __CrownLoad(212, (unsigned long )(& c), 5, (long long )c, (double )c);
      __CrownApply2(211, 0, 5, (long long )(b + c), (double )(b + c));
      __CrownLoad(210, (unsigned long )(& a), 5, (long long )a, (double )a);
      __CrownApply2(209, 18, 5, (long long )(b + c <= a), (double )(b + c <= a));
# 30 "triangle.c"
      if (b + c <= a) {
        __CrownBranch(214, 58, 1, 31, "triangle.c");
        __CrownLoad(216, (unsigned long )0, 5, (long long )2, (double )2);
        __CrownStore(217, (unsigned long )(& result));
# 30 "triangle.c"
        result = 2;
      }
# 30 "triangle.c"
        else {
        __CrownBranch(215, 59, 0, 31, "triangle.c");
        {
        __CrownLoad(222, (unsigned long )(& a), 5, (long long )a, (double )a);
        __CrownLoad(221, (unsigned long )(& c), 5, (long long )c, (double )c);
        __CrownApply2(220, 0, 5, (long long )(a + c), (double )(a + c));
        __CrownLoad(219, (unsigned long )(& b), 5, (long long )b, (double )b);
        __CrownApply2(218, 18, 5, (long long )(a + c <= b), (double )(a + c <= b));
# 31 "triangle.c"
        if (a + c <= b) {
          __CrownBranch(223, 60, 1, 32, "triangle.c");
          __CrownLoad(225, (unsigned long )0, 5, (long long )2, (double )2);
          __CrownStore(226, (unsigned long )(& result));
# 31 "triangle.c"
          result = 2;
        }
# 31 "triangle.c"
          else {
          __CrownBranch(224, 61, 0, 32, "triangle.c");
          __CrownLoad(227, (unsigned long )0, 5, (long long )3, (double )3);
          __CrownStore(228, (unsigned long )(& result));
# 32 "triangle.c"
          result = 3;
        }
        }
      }
      }
    }
    }
  }
# 28 "triangle.c"
    else {
    __CrownBranch(199, 62, 0, 29, "triangle.c");
    {
    __CrownLoad(231, (unsigned long )(& match), 5, (long long )match, (double )match);
    __CrownLoad(230, (unsigned long )0, 5, (long long )1, (double )1);
    __CrownApply2(229, 13, 5, (long long )(match == 1), (double )(match == 1));
# 34 "triangle.c"
    if (match == 1) {
      __CrownBranch(232, 63, 1, 35, "triangle.c");
      {
      __CrownLoad(238, (unsigned long )(& a), 5, (long long )a, (double )a);
      __CrownLoad(237, (unsigned long )(& b), 5, (long long )b, (double )b);
      __CrownApply2(236, 0, 5, (long long )(a + b), (double )(a + b));
      __CrownLoad(235, (unsigned long )(& c), 5, (long long )c, (double )c);
      __CrownApply2(234, 18, 5, (long long )(a + b <= c), (double )(a + b <= c));
# 35 "triangle.c"
      if (a + b <= c) {
        __CrownBranch(239, 64, 1, 36, "triangle.c");
        __CrownLoad(241, (unsigned long )0, 5, (long long )2, (double )2);
        __CrownStore(242, (unsigned long )(& result));
# 35 "triangle.c"
        result = 2;
      }
# 35 "triangle.c"
        else {
        __CrownBranch(240, 65, 0, 36, "triangle.c");
        __CrownLoad(243, (unsigned long )0, 5, (long long )1, (double )1);
        __CrownStore(244, (unsigned long )(& result));
# 36 "triangle.c"
        result = 1;
      }
      }
    }
# 34 "triangle.c"
      else {
      __CrownBranch(233, 66, 0, 35, "triangle.c");
      {
      __CrownLoad(247, (unsigned long )(& match), 5, (long long )match, (double )match);
      __CrownLoad(246, (unsigned long )0, 5, (long long )2, (double )2);
      __CrownApply2(245, 13, 5, (long long )(match == 2), (double )(match == 2));
# 38 "triangle.c"
      if (match == 2) {
        __CrownBranch(248, 67, 1, 39, "triangle.c");
        {
        __CrownLoad(254, (unsigned long )(& a), 5, (long long )a, (double )a);
        __CrownLoad(253, (unsigned long )(& c), 5, (long long )c, (double )c);
        __CrownApply2(252, 0, 5, (long long )(a + c), (double )(a + c));
        __CrownLoad(251, (unsigned long )(& b), 5, (long long )b, (double )b);
        __CrownApply2(250, 18, 5, (long long )(a + c <= b), (double )(a + c <= b));
# 39 "triangle.c"
        if (a + c <= b) {
          __CrownBranch(255, 68, 1, 40, "triangle.c");
          __CrownLoad(257, (unsigned long )0, 5, (long long )2, (double )2);
          __CrownStore(258, (unsigned long )(& result));
# 39 "triangle.c"
          result = 2;
        }
# 39 "triangle.c"
          else {
          __CrownBranch(256, 69, 0, 40, "triangle.c");
          __CrownLoad(259, (unsigned long )0, 5, (long long )1, (double )1);
          __CrownStore(260, (unsigned long )(& result));
# 40 "triangle.c"
          result = 1;
        }
        }
      }
# 38 "triangle.c"
        else {
        __CrownBranch(249, 70, 0, 39, "triangle.c");
        {
        __CrownLoad(263, (unsigned long )(& match), 5, (long long )match, (double )match);
        __CrownLoad(262, (unsigned long )0, 5, (long long )3, (double )3);
        __CrownApply2(261, 13, 5, (long long )(match == 3), (double )(match == 3));
# 42 "triangle.c"
        if (match == 3) {
          __CrownBranch(264, 71, 1, 43, "triangle.c");
          {
          __CrownLoad(270, (unsigned long )(& b), 5, (long long )b, (double )b);
          __CrownLoad(269, (unsigned long )(& c), 5, (long long )c, (double )c);
          __CrownApply2(268, 0, 5, (long long )(b + c), (double )(b + c));
          __CrownLoad(267, (unsigned long )(& a), 5, (long long )a, (double )a);
          __CrownApply2(266, 18, 5, (long long )(b + c <= a), (double )(b + c <= a));
# 43 "triangle.c"
          if (b + c <= a) {
            __CrownBranch(271, 72, 1, 44, "triangle.c");
            __CrownLoad(273, (unsigned long )0, 5, (long long )2, (double )2);
            __CrownStore(274, (unsigned long )(& result));
# 43 "triangle.c"
            result = 2;
          }
# 43 "triangle.c"
            else {
            __CrownBranch(272, 73, 0, 44, "triangle.c");
            __CrownLoad(275, (unsigned long )0, 5, (long long )1, (double )1);
            __CrownStore(276, (unsigned long )(& result));
# 44 "triangle.c"
            result = 1;
          }
          }
        }
# 42 "triangle.c"
          else {
          __CrownBranch(265, 74, 0, 43, "triangle.c");
          __CrownLoad(277, (unsigned long )0, 5, (long long )0, (double )0);
          __CrownStore(278, (unsigned long )(& result));
# 45 "triangle.c"
          result = 0;
        }
        }
      }
      }
    }
    }
  }
  __CrownLoad(281, (unsigned long )(& result), 5, (long long )result, (double )result);
  __CrownLoad(280, (unsigned long )0, 5, (long long )0, (double )0);
  __CrownApply2(279, 13, 5, (long long )(result == 0), (double )(result == 0));
# 50 "triangle.c"
  if (result == 0) {
    __CrownBranch(282, 77, 1, 51, "triangle.c");
# 50 "triangle.c"
    goto case_0;
  }
# 50 "triangle.c"
    else {
    __CrownBranch(283, 78, 0, 51, "triangle.c");

  }
  __CrownLoad(286, (unsigned long )(& result), 5, (long long )result, (double )result);
  __CrownLoad(285, (unsigned long )0, 5, (long long )1, (double )1);
  __CrownApply2(284, 13, 5, (long long )(result == 1), (double )(result == 1));
# 51 "triangle.c"
  if (result == 1) {
    __CrownBranch(287, 80, 1, 52, "triangle.c");
# 51 "triangle.c"
    goto case_1;
  }
# 51 "triangle.c"
    else {
    __CrownBranch(288, 81, 0, 52, "triangle.c");

  }
  __CrownLoad(291, (unsigned long )(& result), 5, (long long )result, (double )result);
  __CrownLoad(290, (unsigned long )0, 5, (long long )2, (double )2);
  __CrownApply2(289, 13, 5, (long long )(result == 2), (double )(result == 2));
# 52 "triangle.c"
  if (result == 2) {
    __CrownBranch(292, 83, 1, 53, "triangle.c");
# 52 "triangle.c"
    goto case_2;
  }
# 52 "triangle.c"
    else {
    __CrownBranch(293, 84, 0, 53, "triangle.c");

  }
  __CrownLoad(296, (unsigned long )(& result), 5, (long long )result, (double )result);
  __CrownLoad(295, (unsigned long )0, 5, (long long )3, (double )3);
  __CrownApply2(294, 13, 5, (long long )(result == 3), (double )(result == 3));
# 53 "triangle.c"
  if (result == 3) {
    __CrownBranch(297, 86, 1, 54, "triangle.c");
# 53 "triangle.c"
    goto case_3;
  }
# 53 "triangle.c"
    else {
    __CrownBranch(298, 87, 0, 54, "triangle.c");

  }
# 49 "triangle.c"
  goto switch_break;
  case_0:
  __CrownLoad(300, (unsigned long )0, 6, (long long )(triangle_type), 8);
  __CrownApply1(299, 27, 6, (long long )((char * __restrict )(triangle_type)), 8);
  __CrownLoad(301, (unsigned long )0, 6, (long long )((char const * __restrict )"an equilateral"),
              8);
  __CrownSetCallerCalleeName(302, "main", "strcpy");
# 50 "triangle.c"
  strcpy((char * __restrict )(triangle_type), (char const * __restrict )"an equilateral");
  __CrownEnableSymbolic(304, "main");
  __CrownClearStack(303);
# 50 "triangle.c"
  goto switch_break;
  case_1:
  __CrownLoad(306, (unsigned long )0, 6, (long long )(triangle_type), 8);
  __CrownApply1(305, 27, 6, (long long )((char * __restrict )(triangle_type)), 8);
  __CrownLoad(307, (unsigned long )0, 6, (long long )((char const * __restrict )"an isoscele"),
              8);
  __CrownSetCallerCalleeName(308, "main", "strcpy");
# 51 "triangle.c"
  strcpy((char * __restrict )(triangle_type), (char const * __restrict )"an isoscele");
  __CrownEnableSymbolic(310, "main");
  __CrownClearStack(309);
# 51 "triangle.c"
  goto switch_break;
  case_2:
  __CrownLoad(312, (unsigned long )0, 6, (long long )(triangle_type), 8);
  __CrownApply1(311, 27, 6, (long long )((char * __restrict )(triangle_type)), 8);
  __CrownLoad(313, (unsigned long )0, 6, (long long )((char const * __restrict )"not a triangle"),
              8);
  __CrownSetCallerCalleeName(314, "main", "strcpy");
# 52 "triangle.c"
  strcpy((char * __restrict )(triangle_type), (char const * __restrict )"not a triangle");
  __CrownEnableSymbolic(316, "main");
  __CrownClearStack(315);
# 52 "triangle.c"
  goto switch_break;
  case_3:
  __CrownLoad(318, (unsigned long )0, 6, (long long )(triangle_type), 8);
  __CrownApply1(317, 27, 6, (long long )((char * __restrict )(triangle_type)), 8);
  __CrownLoad(319, (unsigned long )0, 6, (long long )((char const * __restrict )"a scalene"),
              8);
  __CrownSetCallerCalleeName(320, "main", "strcpy");
# 53 "triangle.c"
  strcpy((char * __restrict )(triangle_type), (char const * __restrict )"a scalene");
  __CrownEnableSymbolic(322, "main");
  __CrownClearStack(321);
# 53 "triangle.c"
  goto switch_break;
# 54 "triangle.c"
  goto switch_break;
  switch_break:
  __CrownLoad(323, (unsigned long )0, 6, (long long )((char const * __restrict )"This triangle is %s.\n"),
              8);
  __CrownLoad(324, (unsigned long )0, 6, (long long )(triangle_type), 8);
  __CrownSetCallerCalleeName(325, "main", "printf");
# 56 "triangle.c"
  printf((char const * __restrict )"This triangle is %s.\n", triangle_type);
  __CrownEnableSymbolic(327, "main");
  __CrownClearStack(326);
  __CrownLoad(328, (unsigned long )0, 5, (long long )0, (double )0);
  __CrownStore(329, (unsigned long )(& __retres13));
# 57 "triangle.c"
  __retres13 = 0;
  __CrownLoad(330, (unsigned long )(& __retres13), 5, (long long )__retres13, (double )__retres13);
  __CrownReturn(331);
# 6 "triangle.c"
  return (__retres13);
}
}
void __globinit_triangle(void)
{


  {
  __CrownInit(332);
}
}
