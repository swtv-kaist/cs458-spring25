// Long symbolic path formula generated due to a loop  
#include <crown.h>
#include <stdio.h>

int main(){
    int i, x;
    SYM_int(x);
    printf("x=%d\n",x);

    for (i=0; i < x; i++) {
        printf("i=%d\n",i); 
        if ( i == 3) {
           printf("i becomes 3 finally\n");
           break;
        }
    }
}
// use print_execution to print a symbolic execution path formula

