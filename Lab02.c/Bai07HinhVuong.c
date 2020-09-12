#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	double S; /*S la dien tich hinh vuong*/
	double V; /*V la chu vi hinh vuong*/
	double a; /*a la mot canh hinh vuong*/
	
	printf("Nhap canh a: ");
	scanf("%lf", &a);
	
	V = a*4;
	S = a*a;
	
	printf("Chu vi hinh vuong la: %lf\n", V);
	printf("Dien tich hinh vuong la: %lf", S);
	
	return 0;
}
