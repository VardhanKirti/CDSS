%{
#include "parser.tab.h"
#include <stdio.h>
%}

%%
[0-9]+               { yylval.dval = atoi(yytext); return NUM; }  // Match numbers
[+\-*/()]            { return yytext[0]; }  // Match operators and parentheses
[ \t]                { /* Ignore whitespaces */ }  // Ignore spaces and tabs
\n                   { return 0; }  // Return 0 at the end of the input
.                    { /* Ignore any invalid characters */ }  // Ignore any other invalid characters
%%

int yywrap() {
    return 1;
}

