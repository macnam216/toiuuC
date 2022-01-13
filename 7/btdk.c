#include <stdio.h>

int fact1_func(int n) {
int i, fact = 1;
for (i = 1; i <= n; i++) 
fact *= i;
return fact;
}
int main(){
int n=1000000;
fact1_func(n);
}
