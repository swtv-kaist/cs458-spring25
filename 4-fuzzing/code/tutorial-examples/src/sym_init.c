#include<crown.h>
int main() {
  int x;
  SYM_int_init(x, 7);
  printf("x=%d\n", x); 
  if ( x > 10) 
    printf("x>10\n");
  else  
    printf("x<=10\n");
} 

