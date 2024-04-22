%{
#include<stdio.h>
%}

%%
-?[0-9]+ {printf("Integer Value\n");}
-?[0-9]+[.][0-9]+ {printf("Floating Value\n");}
.* {printf("Invalid Input\n");}
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter the input:\n");
    yylex();
    return 0;
}