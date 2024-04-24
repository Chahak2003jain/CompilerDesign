%{
#include<stdio.h>
%}

%%
"<"[^>]*">" {fprintf(yyout,"%s\n",yytext);}
.|\n {;}
%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin = fopen("input.html","r");
    yyout=fopen("outp.txt","w");
    yylex();
    return 0;
}