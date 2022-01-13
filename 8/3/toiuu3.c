#include <stdio.h>
#include <string.h>
#include <unistd.h>


int main () {
    int x, y, z, t;
    char *str = "toiyeukma";
    int len = strlen(str); 
    for (int i = 1; i<=100000000; i++) {
        x += len;
    }
    y = 2106 + len;
    z = 2106 * len; 
    t = len * len;
    printf ("So ki tu: %d\n", len);
    printf ("Ket qua: \t %d \t %d \t %d", y, z, t);
}

