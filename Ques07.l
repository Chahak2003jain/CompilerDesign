%{
#include<stdio.h>
%}

%%
"//".*\n {;}
"/*"([^*]|[*]+[^/])*"*/" {;}
.|[\n] {fprintf(yyout,"%s",yytext);}
%%

int yywrap()
{
    return 1;
}
int main()
{
    yyin=fopen("input.c","r");
    yyout=fopen("outp.c","w");
    yylex();
    return 0;
}