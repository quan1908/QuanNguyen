#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {int a,b,c;
	
	printf("Lan luot xuong dong: ");
	scanf("%d", &a);
	printf("\n");
	
	for(b=a;b>0;b--){
		printf("\n");
		
		for(c=b;c>0;c--){
			printf("*");
		}
	}
	return 0;
}
