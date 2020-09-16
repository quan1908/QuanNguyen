#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	int iResult;
	int a=10;
	int b=8;
	int c=6;
	int d=5;
	int e=2;
	
	printf("iResult= %d\n",iResult = a - b - c - d);
    printf("iResult= %d\n",iResult = a - b + c - d);
    printf("iResult= %d\n",iResult = a + b / c / d);
    printf("iResult= %d\n",iResult = a + b / c * d);
    printf("iResult= %d\n",iResult = a / b * c * d);
    printf("iResult= %d\n",iResult = a % b / c * d);
    printf("iResult= %d\n",iResult = a % b % c % d);
    printf("iResult= %d\n",iResult = a - (b - c) - d);
    printf("iResult= %d\n",iResult = (a - (b - c)) - d);
    printf("iResult= %d\n",iResult = a - ((b - c) - d));
    printf("iResult= %d\n",iResult = a % (b % c) * d * e);
    printf("iResult= %d\n",iResult = a + (b - c) * d - e);
    printf("iResult= %d\n",iResult = (a + b) * c + d * e);
    printf("iResult= %d",iResult = (a + b) * (c / d) % e);
	
	return 0;
}
