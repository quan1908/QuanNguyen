#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	int a[50];
	int max,min;
	int i;
	
	for(i=0;i<11;i++)
{	printf("So thu %d: ", i+1);
	scanf("%d", &a[i]);
}
	min=a[0];
	max=a[0];
	for(i=0;i<11;i++)
	{
	if(max<a[i])
	{	max=a[i];
	}
	if(min>a[i])
	{	min=a[i];
	}
}
	printf("So lon nhat la: %d\n", max);
	printf("So be nhat la: %d", min);
	return 0;
}	
