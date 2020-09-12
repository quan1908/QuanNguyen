#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	double r;
	float P, S;
	
	printf("Nhap ban kinh r: ");
	scanf("%lf", &r);
	
	P = 2*r*3,14;
	S = 3,14*r*r;
	 printf("Chu vi hinh tron là: %f", P);
	 printf("Dien tich hinh tron là: %f", S);
	return 0;
}
