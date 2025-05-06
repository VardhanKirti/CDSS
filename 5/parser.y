%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
void yyerror(const char *msg);
%}
%token L D
%%
var: L E {printf("Valid Variable/n");return 0;}
   E: E L;
    | E D;
    |  ;
%%
void yyerror(const char *msg)
{
printf("error=%s",msg);
exit(1);
}
int main()
{
printf("Enter the expression:\n");
yyparse();
return 0;
}
