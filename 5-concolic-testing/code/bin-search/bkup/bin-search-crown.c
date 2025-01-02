#include <stdio.h>
#include <assert.h>
#include"crown.h"
#define MAX 8 
#define NOT_FOUND -1 


int array[MAX], n;
int old_array[MAX];

void setup_array() {
   int c;
   //printf("Enter number of elements (the number should be less than %d)\n",MAX);
   //scanf("%d",&n);

   //n = non_det();
   SYM_int(n)

   //__CPROVER_assume(0 < n && n <= MAX);
   if(!(0 < n && n <= MAX)) { printf("Invalid input generated:n=%d\n",n);exit(-1);}
 
   //printf("Enter %d integers\n", n);
 
   for (c = 0; c < n; c++) {
      //scanf("%d",&array[c]);
      //array[c] = non_det();
      SYM_int(array[c]);
      if( c >0 ) {
	      //__CPROVER_assume(array[c-1] <= array[c]);
	      if(!(array[c-1] <= array[c])) { printf("Invalid input generated:a[%d]=%d\n",c,array[c]);exit(-1);}

      }
   }
}
 
/* A target function to model check */
int bin_search( int search) { 

   int first, last, middle;

   first = 0;
   last = n- 1;
   middle = (first+last)/2;

   while (first <= last) {
      if (array[middle] < search)
         first = middle + 1;    
      else if (array[middle] == search) {
	 //return middle;
	 return middle;
      }
      else
         last = middle - 1;
 
      middle = (first + last)/2;
   }
   return NOT_FOUND;

}
 
int check(int idx, int search) {
    int i, result;
    if( idx == NOT_FOUND) {
       for (i=0; i < n ; i++) {
	    if ( array[i] == search) return 0; 
       }

       return 1;
    }
    else return  (array[idx] == search); 
}

int check2() {
   for(int i=0; i < n; i++) {
	   if (old_array[i]!=array[i]) return 0;
   }
   return 1;
}
int main() {
   int search, idx;

   setup_array(); 
   for(int i=0; i < n; i++) old_array[i]=array[i];

   //printf("Enter value to find\n");
   //scanf("%d", &search);
   //search= non_det();
   SYM_int(search);

   idx=bin_search(search);
   //if( idx == NOT_FOUND)  printf("%d does NOT exist in the array\n",search);
   //else printf("%d exists in array[%d]\n",search, idx);
   
   assert(check(idx,search));
   assert(check2());

   return 0;   
}
