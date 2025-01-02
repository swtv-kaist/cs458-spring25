// Symbolic value propagation example. 
// In an assign statement, if RHS has a symbolic variable, 
// a variable in LHS becomes a symbolic variable
#include <crown.h>
#include <stdio.h>

int main(){
    int x, y;
    SYM_int(x);

    printf("x = %d\n", x);
    y = 2 * x + 3;

    if (y == 7)        printf("y(=2x+3) is 7\n");
    else       printf("y(=2x+3) is NOT 7\n");
}

