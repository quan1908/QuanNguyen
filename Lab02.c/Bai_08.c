#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	printf("\nKich co cua kieu du lieu char la: %d", sizeof(char));
    printf("\nKich co cua kieu du lieu int la: %d", sizeof(int));
    printf("\nKich co cua kieu du lieu float la: %d", sizeof(float));
    printf("\nKich co cua kieu du lieu double la: %d", sizeof(double));
    printf("\nKich co cua kieu du lieu long int la: %d", sizeof(int));
    printf("\nKich co cua kieu du lieu long double la: %d", sizeof(double));
	return 0;
}
