#include <stdio.h>

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("Usage: %s <arg1> <arg2>\n", argv[0]);
        return 1;
    }

    if (argv[1][0] == 'H' && argv[2][0] == 'I') {
        printf("Hello World\n");
    } else {
        printf("Goodbye World\n");
    }

    return 0;
}
