#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <crown.h>
int main() {
    int a,b,c, match=0;
    SYM_int(a); SYM_int(b); SYM_int(c);

/*  printf("Please type 3 integers:\n");
    scanf("%d", &a);
    scanf("%d", &b);
    scanf("%d", &c);  */

    //filtering out invalid inputs
    SYM_assume(a>0 && b>0 && c>0);
    printf("a,b,c = %d,%d,%d\n",a,b,c);

    //0: Equilateral, 1:Isosceles, 
    // 2: Not a traiangle, 3:Scalene
    int result=-1;
    if(a==b) match=match+1;
    if(a==c) match=match+2;
    if(b==c) match=match+3;
    if(match==0) {
        if( a+b <= c) result=2;
        else if( b+c <= a) result=2;
        else if(a+c <= b) result =2;
        else result=3;
    } else {
        if(match == 1) {
            if(a+b <= c) result =2;
            else result=1;
        } else {
            if(match ==2) {
                if(a+c <=b) result = 2;
                else result=1;
            } else {
                if(match==3) {
                    if(b+c <= a) result=2;
                    else result=1;
                } else result = 0;
            } }}

    char triangle_type[20];
    switch(result) {
       case 0: strcpy(triangle_type, "an equilateral"); break;
       case 1: strcpy(triangle_type, "an isoscele"); break;
       case 2: strcpy(triangle_type, "not a triangle"); break;
       case 3: strcpy(triangle_type, "a scalene"); break;
       defaults: break;
    }
    printf("This triangle is %s.\n", triangle_type);
}

