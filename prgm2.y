%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror();
%}

%token ENTER A B

%%
Stmt: s ENTER { printf("valid Grammer"); exit(0);}
   s: A s B
   s: A s1 B | A
   s1: ;
   |s1 B
     |
     ;
%%
void main()
{
printf("Enter the string \n");
yyparse();
}
int yyerror()
{
printf("Invalid Expression \n");
return 0;
}
