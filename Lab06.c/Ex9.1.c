#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	int a;
	
	
	for(a=100; a>0; a-=5){
		printf("%d,", a);
	}
	return 0;
}
