#include <stdio.h>

int UCLN(int a, int b) {
    while(a != b) {
    if(a > b) a -= b;
    else b -= a;
    }
    return b;
}

 

int main() {
    int a = 9, b = 36141;
    printf("\n UCLN (%d, %d) = %d", a, b, UCLN (a, b));
}
