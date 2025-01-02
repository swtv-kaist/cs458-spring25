// Crown does not support a symbolic pointer 
// Instead, each element can be declared symbolically   
#include <crown.h>
#include <stdio.h>
int main(){
    int x, y;
    int *ptr; 

	SYM_int(x); SYM_int(y);
    // SYM_int_ptr(ptr); // NOT supported 
	printf("x=%d, y=%d, *ptr=%d\n", x, y, *ptr);

    // The following code does not generate a symbolic
    // path formula because no expression in the 
    // condition is symbolic
    if (ptr == &x) printf("ptr points to x\n");
    else if (ptr == &y) printf("ptr points to y\n");

    if (*ptr == x) printf("*ptr equals to x\n");
    else if (*ptr == y) printf("*ptr equals to y\n");
}
