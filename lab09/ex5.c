#include <stdio.h>
#include <stdlib.h>

float s(int x, int y, int z) {
	float S, p;
	
	p=(x+y+z)/2;
	S=(sqrt(p*(p-x)*(p-y)*(p-z)));
	return S;
}


int main()
{
	float a, b, c;
	printf("nhap cac canh a, b, c:\n");
	scanf("%f %f %f", &a ,&b, &c);
	if ((a+b)>c)
		if ((a+c)>b)
			if ((b+c)>a)
			{
				printf("%f",s(a, b, c));
			}
			else printf ("khong phai tam giac");
		else printf ("khong phai tam giac");
	else printf ("khong phai tam giac");
	
}
