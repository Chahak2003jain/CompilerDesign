%{
    #include<stdio.h>
%}


%%
^[a-zA-z_][a-zA-Z0-9_]* {printf("Valid Identifier\n");}


.* {printf("Invalid Identifier\n");}
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