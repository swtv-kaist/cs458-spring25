# 1 "./limit4-sym-index-resolved.cil.c"
# 1 "/mnt/c/Dropbox/classes/CS492A-Fall18/3-crown/code-examples/examples//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "./limit4-sym-index-resolved.cil.c"
# 21 "limit4-sym-index-resolved.c"
void __globinit_limit4_sym_index_resolved(void) ;
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
# 376 "/mnt/d/ubuntu/CROWN-sym_assume/bin/../include/crown.h"
extern void __CrownInt(int *x , int cnt_sym_var , int ln , char *fname , ...) __attribute__((__crown_skip__)) ;
# 25 "limit4-sym-index-resolved.c"
int main(void) ;
# 25 "limit4-sym-index-resolved.c"
static int cnt_symbolic_var = 1;
# 21 "limit4-sym-index-resolved.c"
int main(void)
{
  int x ;
  int tmp ;
  int array[4] ;
  FILE *f ;
  FILE *tmp___0 ;
  int __retres6 ;

  {
  __globinit_limit4_sym_index_resolved();
  __CrownCheckSymbolic(3, "main");
  __CrownCall(2, 1);
  __CrownClearStack(1);
# 25 "limit4-sym-index-resolved.c"
  __CrownInt(& x, cnt_symbolic_var, 25, (char *)"limit4-sym-index-resolved.c", "x");
  __CrownLoad(6, (unsigned long )(& cnt_symbolic_var), 5, (long long )cnt_symbolic_var,
              (double )cnt_symbolic_var);
  __CrownLoad(5, (unsigned long )0, 5, (long long )1, (double )1);
  __CrownApply2(4, 0, 5, (long long )(cnt_symbolic_var + 1), (double )(cnt_symbolic_var + 1));
  __CrownStore(7, (unsigned long )(& cnt_symbolic_var));
# 25 "limit4-sym-index-resolved.c"
  cnt_symbolic_var ++;
# 26 "limit4-sym-index-resolved.c"
  while (1) {
    while_continue: ;
    {
    __CrownLoad(10, (unsigned long )0, 5, (long long )0, (double )0);
    __CrownLoad(9, (unsigned long )(& x), 5, (long long )x, (double )x);
    __CrownApply2(8, 20, 5, (long long )(0 < x), (double )(0 < x));
# 26 "limit4-sym-index-resolved.c"
    if (0 < x) {
      __CrownBranch(11, 6, 1, 27, "limit4-sym-index-resolved.c");
      {
      __CrownLoad(15, (unsigned long )(& x), 5, (long long )x, (double )x);
      __CrownLoad(14, (unsigned long )0, 5, (long long )4, (double )4);
      __CrownApply2(13, 18, 5, (long long )(x <= 4), (double )(x <= 4));
# 26 "limit4-sym-index-resolved.c"
      if (x <= 4) {
        __CrownBranch(16, 7, 1, 27, "limit4-sym-index-resolved.c");

      }
# 26 "limit4-sym-index-resolved.c"
        else {
        __CrownBranch(17, 8, 0, 27, "limit4-sym-index-resolved.c");
# 26 "limit4-sym-index-resolved.c"
        goto _L;
      }
      }
    }
# 26 "limit4-sym-index-resolved.c"
      else {
      __CrownBranch(12, 9, 0, 27, "limit4-sym-index-resolved.c");
      _L:
      __CrownLoad(19, (unsigned long )(& stderr), 6, (long long )stderr, 8);
      __CrownApply1(18, 27, 6, (long long )((FILE * __restrict )stderr), 8);
      __CrownLoad(20, (unsigned long )0, 6, (long long )((char const * __restrict )"### SYM_assume(%s) is violated at Line %d (%s in %s) ###\n"),
                  8);
      __CrownLoad(21, (unsigned long )0, 6, (long long )"0< x && x <=4", 8);
      __CrownLoad(22, (unsigned long )0, 5, (long long )26, (double )26);
      __CrownLoad(23, (unsigned long )0, 6, (long long )"main", 8);
      __CrownLoad(24, (unsigned long )0, 6, (long long )"limit4-sym-index-resolved.c",
                  8);
      __CrownSetCallerCalleeName(25, "main", "fprintf");
# 26 "limit4-sym-index-resolved.c"
      fprintf((FILE * __restrict )stderr, (char const * __restrict )"### SYM_assume(%s) is violated at Line %d (%s in %s) ###\n",
              "0< x && x <=4", 26, "main", "limit4-sym-index-resolved.c");
      __CrownEnableSymbolic(27, "main");
      __CrownClearStack(26);
      __CrownLoad(28, (unsigned long )0, 6, (long long )((char const * __restrict )"__SYM_assume_violated"),
                  8);
      __CrownLoad(29, (unsigned long )0, 6, (long long )((char const * __restrict )"w"),
                  8);
      __CrownSetCallerCalleeName(30, "main", "fopen");
# 26 "limit4-sym-index-resolved.c"
      tmp___0 = fopen((char const * __restrict )"__SYM_assume_violated", (char const * __restrict )"w");
      __CrownEnableSymbolic(33, "main");
      __CrownHandleReturn(32, 6, (long long )tmp___0, 8);
      __CrownStore(31, (unsigned long )(& tmp___0));
      __CrownLoad(34, (unsigned long )(& tmp___0), 6, (long long )tmp___0, 8);
      __CrownStore(35, (unsigned long )(& f));
# 26 "limit4-sym-index-resolved.c"
      f = tmp___0;
      {
      __CrownLoad(37, (unsigned long )(& f), 6, (long long )f, 8);
      __CrownApply1(36, 26, 5, (long long )(! f), (double )(! f));
# 26 "limit4-sym-index-resolved.c"
      if (! f) {
        __CrownBranch(38, 11, 1, 27, "limit4-sym-index-resolved.c");
        __CrownLoad(41, (unsigned long )(& stderr), 6, (long long )stderr, 8);
        __CrownApply1(40, 27, 6, (long long )((FILE * __restrict )stderr), 8);
        __CrownLoad(42, (unsigned long )0, 6, (long long )((char const * __restrict )"### %s file cannot be created ###\n"),
                    8);
        __CrownLoad(43, (unsigned long )0, 6, (long long )"__SYM_assume_violated",
                    8);
        __CrownSetCallerCalleeName(44, "main", "fprintf");
# 26 "limit4-sym-index-resolved.c"
        fprintf((FILE * __restrict )stderr, (char const * __restrict )"### %s file cannot be created ###\n",
                "__SYM_assume_violated");
        __CrownEnableSymbolic(46, "main");
        __CrownClearStack(45);
      }
# 26 "limit4-sym-index-resolved.c"
        else {
        __CrownBranch(39, 12, 0, 27, "limit4-sym-index-resolved.c");
        __CrownLoad(47, (unsigned long )(& f), 6, (long long )f, 8);
        __CrownSetCallerCalleeName(48, "main", "fclose");
# 26 "limit4-sym-index-resolved.c"
        fclose(f);
        __CrownEnableSymbolic(50, "main");
        __CrownClearStack(49);
      }
      }
      __CrownLoad(51, (unsigned long )0, 5, (long long )1, (double )1);
      __CrownSetCallerCalleeName(52, "main", "exit");
# 26 "limit4-sym-index-resolved.c"
      exit(1);
      __CrownEnableSymbolic(54, "main");
      __CrownClearStack(53);
    }
    }
# 26 "limit4-sym-index-resolved.c"
    goto while_break;
  }
  while_break:
  __CrownLoad(55, (unsigned long )0, 6, (long long )((char const * __restrict )"x = %d\n"),
              8);
  __CrownLoad(56, (unsigned long )(& x), 5, (long long )x, (double )x);
  __CrownSetCallerCalleeName(57, "main", "printf");
# 28 "limit4-sym-index-resolved.c"
  printf((char const * __restrict )"x = %d\n", x);
  __CrownEnableSymbolic(59, "main");
  __CrownClearStack(58);
  __CrownLoad(60, (unsigned long )0, 5, (long long )0, (double )0);
  __CrownStore(61, (unsigned long )(& array[0]));
# 29 "limit4-sym-index-resolved.c"
  array[0] = 0;
  __CrownLoad(62, (unsigned long )0, 5, (long long )1, (double )1);
  __CrownStore(63, (unsigned long )(& array[1]));
# 30 "limit4-sym-index-resolved.c"
  array[1] = 1;
  __CrownLoad(64, (unsigned long )(& x), 5, (long long )x, (double )x);
  __CrownStore(65, (unsigned long )(& array[2]));
# 31 "limit4-sym-index-resolved.c"
  array[2] = x;
  __CrownLoad(66, (unsigned long )0, 5, (long long )4, (double )4);
  __CrownStore(67, (unsigned long )(& array[3]));
# 32 "limit4-sym-index-resolved.c"
  array[3] = 4;
# 34 "limit4-sym-index-resolved.c"
  while (1) {
    while_continue___0: ;
    {
    {
    __CrownLoad(72, (unsigned long )(& x), 5, (long long )x, (double )x);
    __CrownLoad(71, (unsigned long )0, 5, (long long )1, (double )1);
    __CrownApply2(70, 1, 5, (long long )(x - 1), (double )(x - 1));
    __CrownLoad(69, (unsigned long )0, 5, (long long )0, (double )0);
    __CrownApply2(68, 13, 5, (long long )(x - 1 == 0), (double )(x - 1 == 0));
# 34 "limit4-sym-index-resolved.c"
    if (x - 1 == 0) {
      __CrownBranch(73, 22, 1, 35, "limit4-sym-index-resolved.c");
# 34 "limit4-sym-index-resolved.c"
      goto case_0;
    }
# 34 "limit4-sym-index-resolved.c"
      else {
      __CrownBranch(74, 23, 0, 35, "limit4-sym-index-resolved.c");

    }
    }
    {
    __CrownLoad(79, (unsigned long )(& x), 5, (long long )x, (double )x);
    __CrownLoad(78, (unsigned long )0, 5, (long long )1, (double )1);
    __CrownApply2(77, 1, 5, (long long )(x - 1), (double )(x - 1));
    __CrownLoad(76, (unsigned long )0, 5, (long long )1, (double )1);
    __CrownApply2(75, 13, 5, (long long )(x - 1 == 1), (double )(x - 1 == 1));
# 34 "limit4-sym-index-resolved.c"
    if (x - 1 == 1) {
      __CrownBranch(80, 25, 1, 35, "limit4-sym-index-resolved.c");
# 34 "limit4-sym-index-resolved.c"
      goto case_1;
    }
# 34 "limit4-sym-index-resolved.c"
      else {
      __CrownBranch(81, 26, 0, 35, "limit4-sym-index-resolved.c");

    }
    }
    {
    __CrownLoad(86, (unsigned long )(& x), 5, (long long )x, (double )x);
    __CrownLoad(85, (unsigned long )0, 5, (long long )1, (double )1);
    __CrownApply2(84, 1, 5, (long long )(x - 1), (double )(x - 1));
    __CrownLoad(83, (unsigned long )0, 5, (long long )2, (double )2);
    __CrownApply2(82, 13, 5, (long long )(x - 1 == 2), (double )(x - 1 == 2));
# 34 "limit4-sym-index-resolved.c"
    if (x - 1 == 2) {
      __CrownBranch(87, 28, 1, 35, "limit4-sym-index-resolved.c");
# 34 "limit4-sym-index-resolved.c"
      goto case_2;
    }
# 34 "limit4-sym-index-resolved.c"
      else {
      __CrownBranch(88, 29, 0, 35, "limit4-sym-index-resolved.c");

    }
    }
    {
    __CrownLoad(93, (unsigned long )(& x), 5, (long long )x, (double )x);
    __CrownLoad(92, (unsigned long )0, 5, (long long )1, (double )1);
    __CrownApply2(91, 1, 5, (long long )(x - 1), (double )(x - 1));
    __CrownLoad(90, (unsigned long )0, 5, (long long )3, (double )3);
    __CrownApply2(89, 13, 5, (long long )(x - 1 == 3), (double )(x - 1 == 3));
# 34 "limit4-sym-index-resolved.c"
    if (x - 1 == 3) {
      __CrownBranch(94, 31, 1, 35, "limit4-sym-index-resolved.c");
# 34 "limit4-sym-index-resolved.c"
      goto case_3;
    }
# 34 "limit4-sym-index-resolved.c"
      else {
      __CrownBranch(95, 32, 0, 35, "limit4-sym-index-resolved.c");

    }
    }
# 34 "limit4-sym-index-resolved.c"
    goto switch_break;
    case_0:
    __CrownLoad(96, (unsigned long )(& array[0]), 5, (long long )array[0], (double )array[0]);
    __CrownStore(97, (unsigned long )(& tmp));
# 34 "limit4-sym-index-resolved.c"
    tmp = array[0];
# 34 "limit4-sym-index-resolved.c"
    goto switch_break;
    case_1:
    __CrownLoad(98, (unsigned long )(& array[1]), 5, (long long )array[1], (double )array[1]);
    __CrownStore(99, (unsigned long )(& tmp));
# 34 "limit4-sym-index-resolved.c"
    tmp = array[1];
# 34 "limit4-sym-index-resolved.c"
    goto switch_break;
    case_2:
    __CrownLoad(100, (unsigned long )(& array[2]), 5, (long long )array[2], (double )array[2]);
    __CrownStore(101, (unsigned long )(& tmp));
# 34 "limit4-sym-index-resolved.c"
    tmp = array[2];
# 34 "limit4-sym-index-resolved.c"
    goto switch_break;
    case_3:
    __CrownLoad(102, (unsigned long )(& array[3]), 5, (long long )array[3], (double )array[3]);
    __CrownStore(103, (unsigned long )(& tmp));
# 34 "limit4-sym-index-resolved.c"
    tmp = array[3];
# 34 "limit4-sym-index-resolved.c"
    goto switch_break;
    switch_break: ;
    }
# 34 "limit4-sym-index-resolved.c"
    goto while_break___0;
  }
  while_break___0:
  __CrownLoad(106, (unsigned long )(& tmp), 5, (long long )tmp, (double )tmp);
  __CrownLoad(105, (unsigned long )0, 5, (long long )3, (double )3);
  __CrownApply2(104, 13, 5, (long long )(tmp == 3), (double )(tmp == 3));
# 36 "limit4-sym-index-resolved.c"
  if (tmp == 3) {
    __CrownBranch(107, 46, 1, 37, "limit4-sym-index-resolved.c");
    __CrownLoad(109, (unsigned long )0, 6, (long long )((char const * __restrict )"ERROR\n"),
                8);
    __CrownSetCallerCalleeName(110, "main", "printf");
# 37 "limit4-sym-index-resolved.c"
    printf((char const * __restrict )"ERROR\n");
    __CrownEnableSymbolic(112, "main");
    __CrownClearStack(111);
  }
# 36 "limit4-sym-index-resolved.c"
    else {
    __CrownBranch(108, 47, 0, 37, "limit4-sym-index-resolved.c");
    __CrownLoad(113, (unsigned long )0, 6, (long long )((char const * __restrict )"Fine\n"),
                8);
    __CrownSetCallerCalleeName(114, "main", "printf");
# 39 "limit4-sym-index-resolved.c"
    printf((char const * __restrict )"Fine\n");
    __CrownEnableSymbolic(116, "main");
    __CrownClearStack(115);
  }
  __CrownLoad(117, (unsigned long )0, 5, (long long )0, (double )0);
  __CrownStore(118, (unsigned long )(& __retres6));
# 41 "limit4-sym-index-resolved.c"
  __retres6 = 0;
  __CrownLoad(119, (unsigned long )(& __retres6), 5, (long long )__retres6, (double )__retres6);
  __CrownReturn(120);
# 21 "limit4-sym-index-resolved.c"
  return (__retres6);
}
}
void __globinit_limit4_sym_index_resolved(void)
{


  {
  __CrownInit(121);
}
}
