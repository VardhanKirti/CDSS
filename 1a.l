%{
#include<stdio.h>
int s=0,w=0,l=0,c=0;
%}
%%     
" " {s++;w++;}
[\n] {l++;w++;}
[\t\n] {w++;}
[^\t\n] {c++;}
%%
int yywrap()
{
return 1;
} 
int main()
{
yyin=fopen("tree.txt","r");
yylex();
printf("number of words = %d\n",w);
printf("number of space = %d\n",s);
printf("number of letters = %d\n",l);
printf("number of char = %d\n",c);
return 0;
}
