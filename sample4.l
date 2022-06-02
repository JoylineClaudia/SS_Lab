%{
	#include<stdio.h>
	int i=0;
%}
%%
	([a-zA-Z 0-9)* {i++;}
	"\n" {printf("The no. of words is %d")i);i=0;}
%%
int main()
{
	printf("Enter the Sentance \n");
	yylex();
	return 0;
}
