#include <crown.h>
#include <stdio.h>
#include<assert.h>
#define N  7 
int main(){ // Insertion sort 
    unsigned int a[N], i, j, tmp;
    /* Declare array elements symbolic */ 
    for (i=0; i<N; i++) {SYM_unsigned_int(a[i]);} //printf("%u,",a[i]);}
    //puts("");

    for (i=0; i<N-1; i++)
        for (j=i+1; j<N  ; j++)	
            if (a[i] > a[j]){
                tmp = a[i];
                a[i] = a[j];
                a[j] = tmp;
            }
  /* Check the array is sorted */ 
  for (i=0; i<N-1; i++)
    assert(a[i] <= a[i+1]);
}
