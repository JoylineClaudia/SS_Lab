%{
	#include<stdio.h>
	int flag=0;
%}
%%
([ab])* {flag++;}

%%
int main()
{
	printf("Enter the Pattern \n");
	yylex();
	printf("Count is %d \n",flag);
	if(flag>0)
		printf("Pattern is matched \n");
	else
		printf("Pattern is not matched \n");
	return 0;
}

