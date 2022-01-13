
#include<stdio.h>
 

int main(){

 float sum = 0;

    int   n   = 1000000;


    for (int i = 1; i <= n; i++) {

        sum += i;

    }

    printf ("Tong: %f", sum);

    float avg = sum / n;

    printf("\n trung binh cong : %f", avg);



}
