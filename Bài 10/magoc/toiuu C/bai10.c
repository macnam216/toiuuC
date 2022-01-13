#include <stdio.h>
#include <time.h>

int n = 10;
int tong (int n) {
    int S = 0;
    
    for(int i = 1; i <= n; i++)
    {
        S = S + i;
    }
    return S;
}
//mã chết: tính tổng ps
float tongPhanSo (int n) {
	double sum = 0;
	for(int i = 1; i <= n; i++) {
		sum += 1.0 / i;
	}
}

long tongGiaiThua(int n) {
	unsigned long long sum = 0;
	unsigned long long gt = 1;
	int i;

	for(i = 1; i <= n; i++) {
		gt *= i; // gt: i!
		sum += gt; // sum = sum + i!
	}	
	return sum;
    }

int main () {
    int a = 1468796,
        b = 4894179,
        c = tong (n);
         clock_t start, end;
    double time_use;
    long x = tongGiaiThua (n);
    int z, y;
    start = clock();
    if (a > b) {

        y = x * c * 3;
        z = x * c * 3 + 456;
    }

    else {

        z = x * c * 3 + 10e2;
        y = x * c * 3 + 1;  
    }
    printf ("Tong tu 1 den %d là %d.\n", n, c);
    printf ("Tong giai thua tu 1! den %d! la %ld. \n", n, x);
    printf ("Ket qua cac bieu thuc y và z: \t %d \t %d \n", y, z);
    end = clock();
double time_spent = (double)(end - start) / CLOCKS_PER_SEC;
printf ("\ntime: %f", time_spent);
}
