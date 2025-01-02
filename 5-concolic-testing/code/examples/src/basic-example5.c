// SYM_assume() to give constraints on symbolic variables.  
#include <crown.h>
#include <stdio.h>
#include <assert.h>

void main() {
   int x, y;
   SYM_int(x);
   SYM_int(y);
   SYM_assume( x + y > 10);
   printf("x=%d, y=%d\n", x, y);
   assert( x + y > 10);
} 
 

