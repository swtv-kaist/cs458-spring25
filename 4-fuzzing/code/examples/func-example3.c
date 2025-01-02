// Recursive function example. 
// CROWN can handle a recursive function. 
// A recursive function can generate infinite # of iterations.
#include <crown.h>
#include <stdio.h>

unsigned int fac(unsigned int n){
    if (n == 0) return 1;
    else return n * fac(n-1);
}

int main(){
    unsigned int a;
    SYM_unsigned_int(a);
    if(a> 10 ) exit(-1);
    printf("a = %u\n", a);

    if (fac(a) == 24) printf("Reach!\n");
    return 0;
}

