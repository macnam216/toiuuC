#include <stdio.h>
#include <string.h>
#include <unistd.h>

int main () {
    int x, y, z, t;
    char *str = "toiyeukma";
    for (int i = 1; i<=100000000; i++) {
        x += strlen(str);
    }
    y = 2106 + strlen(str);
    z = 2106 * strlen(str); 
    t = (strlen(str)) * (strlen(str));
    printf ("so ki tu: %zu\n", strlen (str));

    printf ("Ket qua: \t %d \t %d \t %d", y, z, t);
}

