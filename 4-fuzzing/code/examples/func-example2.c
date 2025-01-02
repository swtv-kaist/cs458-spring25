// Another simple function example.
// A function can return a symbolic value
#include <crown.h>
#include <stdio.h>

int sign(int x){    return (x >= 0);}   

int main(){
    int a;
    SYM_int(a);
    printf("a = %d\n", a);

    if (sign(a) == 0)      printf("%d is negative\n", a);    
    else        printf("%d is non-negative\n",a);   
    return 0;
}

