#include <stdio.h>
int main(int argc, char **argv){
    int i=0,j=0;
    if (argc < 2) {
        printf("Usage:…\n");exit(-1);}
    i = atoi(argv[1]);
    printf("i=%d\n",i);

    if( i == 0)
        j=0;
    else {
        if (i == 1)
            j=1;
        if (i > 1 && i < 10)
            j=2;
    }
    printf("j=%d\n",j);
}
