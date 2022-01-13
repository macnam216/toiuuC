#include <stdio.h>

int main()
{
int  n,m,i, sum ;
printf("nhap n");
scanf("%d",&n);
printf("nhap m"); 
scanf("%d",&m);
sum =0;
for(i = m ; i < m+n; i++) sum += i;
printf ("‘ Tổng = %d ‘", sum);
}
