%{
	#include<stdio.h>
	int nchars,nlines,nwords,space;
%}
%%
([ ])* {space++;}
\n {nlines++;}
[^ \n\t]+ {nwords++; nchars=nchars+yyleng;}
. {nchars++;}

%%
int main()
{
	yyin=fopen("name.txt","r");
	yylex();
	printf("Count is characters : %d \n",nchars);
	printf("Count is Lines : %d \n",nlines);
	printf("Count is Words : %d \n",nwords);
	printf("Number of space : %d \n",space);
	return 0;
}

