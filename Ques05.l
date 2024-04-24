%{
#include<stdio.h>
int wordcount = 0;
int charcount = 0;
int spacecount = 0;

%}

%%

[^\t\n" "]+ {charcount+=yyleng; wordcount++;}
" " {spacecount++;}

%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin = fopen("input.txt","r");
    yylex();

    printf("Number of characters: %d\n",charcount);
    printf("Number of words: %d\n",wordcount);
    printf("Number of white spaces: %d\n",spacecount);
    return 0;
}