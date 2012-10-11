#include <stdio.h>
#include <stdlib.h>
 
int add() {
  int a = 10, b = 20;
  a = a + b;
 
  printf("Addition Successful and Result = %d\n", a);
  return a;
}


int
set(int* d) {
  int i=0;
  for(i=0;i<16;i++)
    d[i]=i;
  return 0;
}
