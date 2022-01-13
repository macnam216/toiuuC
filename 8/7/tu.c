#include <stdio.h>
#include <math.h>

int fact2_func(int n){
int i, fact =1;
for (i=n; i!=0;i--)
fact*=i;
return (fact);
}
int main (){
int n=1000000;
fact2_func(n);
}

