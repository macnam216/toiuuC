#include<stdio.h>
 

int main(){

 int sum0 = 0;
int sum1=0;
int sum2=0;
int sum3=0;

    int   n   = 1000000;


    for (int i = 1; i <= n; i+=4) {
        sum0=sum0+i; 
        sum1 =sum0+ i+1; 
        sum2=sum1+i+2;
        sum3=sum2+i+3;

    }

    printf ("Tong: %d", sum3);

    float avg = sum3 / n;

    printf("\n trung binh cong : %f", avg);



}
