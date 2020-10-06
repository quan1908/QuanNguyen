#include<stdio.h>

#include<string.h>

#define max 100

/* run this program using the console pauser or add your own getch, system("pause") or input loop */
char DoiThanhInHoa(char s[])
{
	int i;
	
	for(i=0;i<strlen(s);i++) {
 	if(s[i]>='a' && s[i]<='z') {
    s[i]=s[i]-32;
}          
}
    printf("%s",s);
}

int main()
{
    char s[max];

    printf("Nhap chuoi: ");
    gets(s);
    DoiThanhInHoa(s);

}
