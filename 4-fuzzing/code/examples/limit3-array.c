// Array cannot be declared symbolically.  
// Instead, each element can be declared symbolically   
#include <crown.h>
#include <stdio.h>
int main(){
    int i;
    int array[4];

   // SYM_int(array); // NOT supported 
   for(i=0; i < 4; i++) 
       SYM_int(array[i]);
    
    if (array[1] == 3)  
          printf("array[1] is 3\n");  
    else printf("array[1] is not 3 but \%d\n",array[1]);
}


