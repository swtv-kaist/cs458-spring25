#include<stdio.h>
#include<assert.h>
#define N 6

void sort(int *a, int a_size ) {
  int i,j, tmp;
  for(i=0; i<a_size-1; i++)
    for (j=i+1; j<a_size-1; j++) {
      if (a[i] > a[j]){
         tmp = a[i];
         a[i] = a[j];
         a[j] = tmp;
      }
    }
}

void environment_setup(int *a, int a_size) {
    /* To fill out: 
       Assign random *unique values* to a[], each of which 
       ranges from 1 to 99 */  
    
}
int main(){  
    int data[N], i;

    environment_setup(data, N);

    printf("Input: ");
    for(i=0; i< N; i++) printf("%d,", data[i]);
    printf("\n");

    sort(data, N);

    printf("Output: ");
    for(i=0; i< N; i++) printf("%d,", data[i]);
    printf("\n");

    // Checking the sorted result
    for(i=0; i < N-1; i++) 
        assert(data[i]<=data[i+1]);
}

