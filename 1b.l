%{
#include<stdio.h>
int i=0;
%}
digit [0-9]
letter [a-z A-Z]
%%
{letter}{letter}|{digit}* {i++;}
{digit}{letter}|{digit}* {i;}
%%
int yywrap(void) {
    return 1;
}

int main() {
    printf("Enter the values: ");
    yylex();
    printf("Identifiers found: %d\n", i);
    return 0;
}

