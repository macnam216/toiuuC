#include <stdio.h>
#include<time.h>
int main(void)
{
    int arr[1000];
    int a = 1, b = 5, c = 25, d = 7;
    clock_t start, end;
    double time_use;
    start = clock();
    // pre calculating the constant expression
    int temp = (((c % d) * a / b) % d);
  
    for (int i = 0; i < 1000; ++i) {
        arr[i] = temp * i;
    }
    end = clock();
    time_use = (double)(end - start) / CLOCKS_PER_SEC;
    
    printf("thoi gian %f seconds", time_use);
    return 0;
}
