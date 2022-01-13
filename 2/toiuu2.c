#include <stdio.h>

int UCLN(int a, int b)
{
int t = a % b;
while (t) {
    a = b;
    b = t;
    t = a % b;
    }

return b;
}

 
int main() {
    int a = 9, b = 587844916;
    printf("\n UCLN (%d, %d) = %d", a, b, UCLN (a, b));
}