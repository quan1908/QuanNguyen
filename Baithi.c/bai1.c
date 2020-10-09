#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int add(int a, int b) {
    int sum = a + b;
    return sum; 
}
 
int subtract(int a, int b) {
    return a - b;
}
 
int mutiply(int a, int b) {
    return a * b;
}
 
float devide(int a, int b) {
    return (float) a / b;
}
 
 
int main() {
    int a, b, i;
    printf("Calculation: \n");
    printf("1. Input Number\n");
    printf("2. Calculate Sum\n");
    printf("3. Calculate Substraction\n");
    printf("4. Calculate Multiplication\n");
    printf("5. Calculate Division\n");
    printf("6. Exit\n");
    printf("Lua chon cua ban la: ");
    scanf("%d", &i);
    
    if(i==1) {
	printf("So nguyen a: ");
    scanf("%d", &a);
    printf("So nguyen b: ");
    scanf("%d", &b);
	}

	else if(i==2) {
	printf("So nguyen a: ");
    scanf("%d", &a);
    printf("So nguyen b: ");
    scanf("%d", &b);
	printf("\n%d + %d = %d", a, b, add(a, b)); 
	}
    
    else if(i==3) {
	printf("So nguyen a: ");
    scanf("%d", &a);
    printf("So nguyen b: ");
    scanf("%d", &b);
	printf("\n%d - %d = %d", a, b, subtract(a, b));
	}
    
    else if(i==4) {
	printf("So nguyen a: ");
    scanf("%d", &a);
    printf("So nguyen b: ");
    scanf("%d", &b);
	printf("\n%d * %d = %d", a, b, mutiply(a, b));
	}
	
	else if(i==5) {
    	if(b != 0) {
        printf("So nguyen a: ");
    	scanf("%d", &a);
    	printf("So nguyen b: ");
    	scanf("%d", &b);
		printf("\n%d / %d = %f", a, b, devide(a, b));
    	}
	}
	
	else {
		printf("Exit.");
	}
}
