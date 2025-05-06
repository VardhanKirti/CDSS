%{
#include"parser.tab.h"
#include<stdio.h>
#include<stdlib.h>
%}
%%
[a-zA-Z] return L;
[0-9] return D;
%%
int yywrap()
{
return 1;
}

