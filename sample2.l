%{
	#include<stdio.h>
	int flag=0;
%}
%%
(""[aA][nN][dD]"")|(""[oO][rR]"")
%%
int main()
{
	printf("Enter the sentance \n");
	yylex();
	if(flag == 1)
		printf("Compared Sentance \n");
	else
		printf("Simple Sentance \n");
	return 0;
} 
