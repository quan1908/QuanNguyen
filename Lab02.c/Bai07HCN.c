#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	double a;
	double b;
    double P,S;
	
	printf("Nhap chieu dai: ");
	scanf("%lf", &a);
	
	printf("Nhap chieu rong: ");
	scanf("%lf", &b);
	
	P=(a+b)*2;
	S=a*b;
	
	printf("Chu vi hinh chu nhat= %lf", P);
	printf("Dien tich hinh chu nhat= %lf", S);

	
	
	return 0;
}
