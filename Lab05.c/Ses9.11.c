#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) 
{
	int num ;
    label1:
    printf("\nEnter a number (1) :");
    scanf("%d",&num);
    
	if(num==1)
    goto Test;
    else
    goto label1;
    Test:
    printf("All done...");
	return 0;
}
