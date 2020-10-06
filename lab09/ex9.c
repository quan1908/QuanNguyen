#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */
int Diem(int x) {
	int a;
	printf("Nhap diem thu %d: ", x+1);
	scanf("%d", &a);
	return a;
}

int main(int argc, char *argv[]) {
	int point[10];
	int i, sum = 0;
	float max = 0;
	float P;
	
	for(i=0;i<10;i++) {
		point[i] = Diem(i);
		if(max < point[i]) {
			max = point[i];
		}
		sum += i;
	}
	P=sum/(i+1);
	printf("Diem cao nhat la: %f", max);
	printf("Diem trung binh la: %f", P);
	return 0;
}

