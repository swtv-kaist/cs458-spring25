// Symbolic array index is not supported.
// If an array index is a symbolic variable, Crown does not generated 
// a corresponding symbolic path formula  
#include <crown.h>
#include <stdio.h>
int main(){
    int x;
    int array[4];

    SYM_int(x);
    SYM_assume( 0< x && x <=4);

    printf("x = %d\n", x);              
    array[0] = 0;
    array[1] = 1;
    array[2] = x;
    array[3] = 4;
    
    if (array[x-1] == 3)  printf("ERROR\n");  
    else        printf("Fine\n");
}

