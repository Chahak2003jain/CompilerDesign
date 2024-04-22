%{
    #include<stdio.h>
    int lines = 0, space = 0, others = 0, tabs = 0, characters = 0;
%}

%%
" " { space++; }
\n { lines++; }
\t { tabs++; }
[a-zA-Z0-9] { characters++; }
. { others++; }
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter the input:\n");
    yylex();
    printf("Lines: %d\n", lines);
    printf("Spaces: %d\n", space);
    printf("Tabs: %d\n", tabs);
    printf("Characters: %d\n", characters);
    printf("Others: %d\n", others);
    return 0;
}

