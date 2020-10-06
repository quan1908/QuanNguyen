#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */
int minIndex(int arr[], int size) {
	int i;
	int minI=0;
	
	for(i=0;i<size;i++) {
		if(arr[minI]>arr[i])
		minI = i;
	
	}
	return minI;
}

int main(int argc, char *argv[]) {
	int i;
	int a[10];
	
	for(i=0;i<10;i++) {
		printf("Nhap phan tu %d: ", i);
		scanf("%d", &a[i]);
	}
	printf("Chi so nho nhat la: %d", minIndex(a,10));
	return 0;
}
