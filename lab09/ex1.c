#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */
float scanfNum(int x) {
	float a;
	
	printf("Nhap so thuc %d: ", x+1);
	fflush(stdin);
	scanf("%f", &a);
	return a;
}

int main(int argc, char *argv[]) {
	int i;
	float arr[5];
	
	arr[0] = scanfNum(0);
	arr[1] = scanfNum(1);
	arr[2] = scanfNum(2);
	arr[3] = scanfNum(3);
	arr[4] = scanfNum(4);
	
	
	printf("\nThu tu nguoc lai la: \n");
	for(i=4;i>=0;i--) {
		printf("%f\n", arr[i]);
	}
	printf("Thu tu dung: \n");
	for(i=0;i<5;i++) {
		printf("%f\n", arr[i]);
	}
	return 0;
}


