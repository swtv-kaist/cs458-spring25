// This example shows how to declare a symbolic variable 
// with an inital value using SYM_int_init().
#include <crown.h> // for CROWN 
#include <stdio.h>

int main() {
   int x;
   SYM_int_init(x, 7);
   printf("x=%d\n", x); 
   if ( x > 10) 
     printf("x>10\n");
   else  
     printf("x<=10\n");
} 

