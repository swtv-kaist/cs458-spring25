#include <stdio.h>
#include <stdlib.h>

FILE * fp ;

extern void _final_() {
	fclose(fp) ;
}

extern void _init_() {
	fp = fopen("log", "w") ;
	atexit(_final_) ;
}

extern void _probe_(int line, char *func, int val) {
	if (line != -1) {
		fprintf(fp, "Store value %d in Function %s, line %d\n", val, func, line) ;
	} else {
		fprintf(fp, "Store value %d in unknown location\n", val) ;
	}	
}
