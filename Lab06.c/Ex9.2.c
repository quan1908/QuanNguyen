#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	int a,b,sum;
	sum=0;
	scanf("%d", &b);
	
	for(a=1;a<=b;a+=2){
		printf("%d", a);
	sum+=a;
	}
	printf("\ntong so le la: %d", sum);
	
	return 0;
}
