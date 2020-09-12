#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	double toan,li,hoa,P; /*P la diem trung binh 3 mon toan,li,hoa*/
	
	printf("Nhap diem mon toan: ");
	scanf("%lf", &toan);
	
	printf("Nhap diem mon li: ");
	scanf("%lf", &li);
	
	printf("Nhap diem mon hoa: ");
	scanf("%lf", &hoa);
	
	P = (toan+li+hoa)/3;
	
	printf("Diem trung binh la: %lf", P);
	return 0;
}
