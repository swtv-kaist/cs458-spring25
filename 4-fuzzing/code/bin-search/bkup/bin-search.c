#include <stdio.h>
#define MAX 16 
#define NOT_FOUND -1 
int array[MAX], n;

void setup_array() {
   int c;
   printf("Enter number of elements (the number should be less than %d)\n",MAX);
   scanf("%d",&n);
 
   printf("Enter %d integers\n", n);
 
   for (c = 0; c < n; c++)
      scanf("%d",&array[c]);
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
	 return middle;
      }
      else
         last = middle - 1;
 
      middle = (first + last)/2;
   }
   return NOT_FOUND;

}
 
int main() {
   int search, idx;

   setup_array(); 

   printf("Enter value to find\n");
   scanf("%d", &search);

   idx=bin_search(search);
   if( idx == NOT_FOUND)  printf("%d does NOT exist in the array\n",search);
   else printf("%d exists in array[%d]\n",search, idx);

   return 0;   
}
