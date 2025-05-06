%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
void yyerror(const char *msg);
%}
%union{double dval;}
%token <dval> NUM
%type <dval> input
%type <dval> exp
%left '+''-'
%left '*''/'
%%
input : exp {printf("Result=%.6f\n",$$);exit(0);} 
   exp:exp'+'exp {$$=$1+$3;}
      |exp'-'exp {$$=$1-$3;}
      |exp'*'exp {$$=$1*$3;}
      |exp'/'exp {$$=$1/$3;}
      |'('exp')' {$$=$2;}
      |NUM {$$=$1;};
%%
void yyerror(const char *msg)
{
printf("error");
exit(0);
}
int main()
{
printf("Enter the expression:\n");
yyparse();
return 0;
}
