// Another Hello CREST example.
// CREST can handle linear integer arithmetic expression
// and nested condition statements
#include <crest.h>
#include <stdio.h>
int main( ) {
    char x, y;
    CREST_char(x);
    CREST_char(y);

    printf("x, y = %d, %d\n", x, y);
    if (2 * x == y){
        if (x != y + 10) printf("Fine here\n");
        else               printf("ERROR\n");
    }
    return 0;
}

