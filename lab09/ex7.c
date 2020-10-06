#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */
int a(int x) {

 int i;
 int s=0;

    for (i=301;i<500;i++) {
	  if(i%7==0) {
	  	s = s + i;
	  }
}
return s;
}


int main(int argc, char *argv[]) {
	int  x, tong;
	
	tong = a(x);
	printf("Tong la: %d", tong);
	return 0;
}
