#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	double top;     /*top la day nho*/
	double bottom;  /*bottom la day lon*/
	double height;  /*height la chieu cao*/
	double S;       /*S la dien tich*/
	
	printf("Nhap top: ");
	scanf("%lf", &top);
	
    printf("Nhap bottom: ");
    scanf("%lf", &bottom);
    
    printf("Nhap height: ");
    scanf("%lf", &height);
    
    S = ((top + bottom)/2)*height;
    
    printf("Dien tich hinh thang la: %lf", S);
	
	
	return 0;
}
