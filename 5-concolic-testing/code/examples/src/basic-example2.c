// Hello Crown example 2 with initial value assigned to 
// a symbolic variable using SYM_int_init.
#include <crown.h>  
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

