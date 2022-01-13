#include <stdio.h>
#include <string.h>

void main (void)
{
  const char * mang [] = { "ngua ", "mat", "len", "troi", "han",
                              "doi","doi", "up", "mat",
                              "xuong", "goi", "vo" };
  char ch1 = mang [0] [0], ch2 = mang [0] [1],
       ch3 = mang [0] [2];
	printf("%c , %c ,%c ",ch1,ch2,ch3);

}
