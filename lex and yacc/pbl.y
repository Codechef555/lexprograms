%{
    #include<stdio.h>
    #include "y.tab.h"
    #include<stdlib.h>
    void yyerror(char *s)
    int yylex();
%}

token% Zero One
%%
stmt:S 
    |;
S:S A
   | A;
A:Zero Zero
   | One One   

%%

int main()
{
    yyparse();
    printf("accepted\n");
    exit(0);
}
void yyerror(char *s)
{
    printf("Not accepted \n");
    exit(0);
}