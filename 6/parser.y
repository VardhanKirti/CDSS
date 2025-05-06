%{
#include<stdio.h> 
#include<stdlib.h>
int yylex();
void yyerror(const char *msg);
%}
%token A B
%%
Str:S '\n' {return 0;}
S:A S B;
| ;
%%
void yyerror(const char *msg)
{
printf("Invalid String=%s\n",msg);
 exit(1);
}
int main()
{
printf("Type the string\n");
if (!yyparse()){
 printf("Valid String\n");

}
return 0;
}

