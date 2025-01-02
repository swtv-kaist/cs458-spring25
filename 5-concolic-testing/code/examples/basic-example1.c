// Hello CROWN example.
// This example shows how to define a symbolic variable.
#include <crown.h> // for CROWN 
#include <stdio.h>

int main(){
    int x;
    SYM_int(x); // Define x as a symbolic input.

    printf("x = %d\n", x); 
    if (x > 100){
        printf("x is greater than 100\n");
    }else{
        printf("x is less than or equal to 100\n");
    }
    return 0;
}

