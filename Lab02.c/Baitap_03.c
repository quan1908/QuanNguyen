#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	float num1,num2,Tong,Hieu,Tich,Thuong;
	
	printf("Nhap num1: ");
	scanf("%f", &num1);
	
	printf("Nhap num2: ");
	scanf("%f", &num2);
	
	Tong=num1+num2;
	Hieu=num1-num2;
	Tich=num1*num2;
	Thuong=num1/num2;
	
	printf("Tong= %f\n", Tong);
	printf("Hieu= %f\n", Hieu);
	printf("Tich= %f\n", Tich);
	printf("Thuong= %f", Thuong);
	return 0;
}
