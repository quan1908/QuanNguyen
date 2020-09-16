#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	float cm, inch, feet;
	
	printf("Nhap cm: ");
	scanf("%f", &cm);
	
	feet = 0.0328084*cm;
	inch = 0.393700*cm;
	
	printf("feet= %f\n", feet);
	printf("inch= %f", inch);
	
	return 0;
}
