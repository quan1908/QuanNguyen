#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	int a,b;

	
	printf("Tuoi: ");
	scanf("%d", &a);
	
	for(b=1;b<=a;b++){
		printf("Nguyen Anh Quan\n", b);
		
	}
	return 0;
}
