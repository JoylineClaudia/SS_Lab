%{
	#include<stdio.h>
	int count=0;
%}
%%
[ab]* {count++;}
"\n" { printf("Entered Pattern is %s",yytext);}
%%
int main()
{
	printf("Enter the Pattern \n");
	yylex();
	if(count==1)
	{
		printf("Pattern is matched \n");
	}
	else
	{
		printf("Pattern is not matched \n");
	}
	return 0;
}

