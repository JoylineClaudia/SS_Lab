%{
	#include<stdio.h>
	int nchars=0;
%}
%%
. {nchars++;}

%%
int main()
{
	printf("Enter your name \n");
	yylex();
	printf("Count is %d \n",nchars);
	return 0;
}

