// Simple function example
// Symbolic variable can be passed into a function.
#include <crown.h>
#include <stdio.h>

void test_me(char x, char y){
    // body of test_me is same to basic2 example
    if (2 * x == y){
        if (x != y + 10){
            printf("Fine here\n");
        }else{
            printf("ERROR\n");
        }
    }
}


int main(){
    char a, b;

    SYM_char(a);
    SYM_char(b);

    printf("a, b = %d, %d\n", a, b);
    test_me(a, b);
    return 0;
}

