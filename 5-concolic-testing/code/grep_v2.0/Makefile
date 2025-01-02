
INCLUDE := -I/usr/lib/gcc/x86_64-linux-gnu/5/include \
-I/usr/local/include \
-I/usr/lib/gcc/x86_64-linux-gnu/5/include-fixed \
-I/usr/include/x86_64-linux-gnu \
-I/usr/include \
-I.

all: grep
grep: 
	gcc -o grep grep.c ${INCLUDE}
clean:
	rm -rf grep grep.o
