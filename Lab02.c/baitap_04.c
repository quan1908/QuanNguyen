#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	float C,F;
	
	printf("Nhap do C: ");
	scanf("%f", &C);
	
	F=(32/9+C/5);
	
	printf("Do F= %f", F);
	return 0;
}
