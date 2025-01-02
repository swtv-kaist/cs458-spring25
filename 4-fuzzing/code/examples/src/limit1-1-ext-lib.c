// External library example.
// When a target program calls an external library function, 
// Crown may occur 'prediction failure' error since Crown
// does not know a body of the external function
#include <crown.h>
#include <stdio.h>
#include <stdlib.h>
int main(){
    int x;
    SYM_int(x);
    printf("x = %d\n",x);
    if (x == abs(x)){// Generate symbolic path formula using
                        // a concrete return value (i.e., x == 0)
        printf("x is non-negative.\n");
    }else{
        printf("x is negative.\n");
    }
    return 0;
}
