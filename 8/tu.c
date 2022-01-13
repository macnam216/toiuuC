#include <stdio.h>
#include <stdbool.h>
#include <math.h>
bool laSoNguyenTo2(int n)
{
    // Neu n < 2 thi khong phai la SNT
    if (n < 2){
        return false;
    }       
     
    // Neu n = 2 la SNT
    if (n == 2){
        return true;
    }
     
    // Neu n la so chan thi ko phai la SNT
    if (n % 2 == 0){
        return false;   
    }
     
    // Lap qua cac so le
    float d=sqrt(n);
    for (int i = 3; i <=d; i += 2){
        if (n % i == 0){
            return false;
        }   
    }
     
    return true;
}

int main()
{
    int n;
    printf( "Nhap so can kiem tra");
    scanf("%d",&n);
         
    if (laSoNguyenTo2(n)){
        printf( "La so nguyen to");
    }
    else {
        printf( "Khong phai so nguyen to");
    }
}
