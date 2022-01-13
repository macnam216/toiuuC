#include <stdio.h>

#include <stdlib.h>





void main() {


    float sum = 0;

    int   n   = 1000000;

    printf ("Cac so chia het cho 5: \n");   
    for (int i = 0; i <= n; i++) {
	if (i % 5 == 0) {
		printf ("%d \t", i);
        }
    }

    for (int i = 0; i <= n; i++) {

        sum += i;

    }

    printf ("Tong: %f", sum);


    float avg = sum / n;


    printf("\n trung binh cong : %f", avg);


}
