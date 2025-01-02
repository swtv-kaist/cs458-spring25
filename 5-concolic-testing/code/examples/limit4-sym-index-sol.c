#include <crown.h>
#include <stdio.h>
#define ENUM_4(array, index, ret) \
do{ \
    switch(index){ \
        case 0: \
            ret = array[0]; \
            break;\
        case 1: \
            ret = array[1]; \
            break; \
        case 2: \
            ret = array[2]; \
            break; \
        case 3: \
            ret = array[3]; \
            break; \
    } \
}while(0);

int main(){
    int x, tmp;
    int array[4];

    SYM_int(x);
    SYM_assume( 0< x && x <=4);

    printf("x = %d\n", x);
    array[0] = 0;
    array[1] = 1;
    array[2] = x;
    array[3] = 4;
    // tmp = array[x-1]
    ENUM_4(array, x-1, tmp);

    if (tmp/*array[x-1]*/ == 3){
        printf("ERROR\n");
    }else{
        printf("Fine\n");
    }
}

