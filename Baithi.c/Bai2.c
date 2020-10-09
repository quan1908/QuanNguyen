#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	int a[10];
	int i;
	
	for(i=0;i<10;i++) {
		printf("Number %d: ", i+1);
		scanf("%d", &a[i]);
	}
	
	for(i=9;i>=0;i--) {
		printf("Result: %d\n", a[i]);
	}
	return 0;
}
