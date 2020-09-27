#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	int b,c[50];
	int i;
	
	for(i=1;i<6;i++)
{	printf("So thu %d : ", i);
	scanf("%d", &c[i]);
}
	for(i=5;i>0;i--)
{	printf("Mang dao nguoc: %d\n", c[i]);	
}	
	return 0;
}
