%{
    #include<stdio.h>
    int ident_cnt=0;
    int const_cnt=0;
    int invalid=0;
%}

%%
^[a-zA-Z_][a-zA-Z0-9_]* {ident_cnt++;}
[0-9]+ {const_cnt++;}
[0-9]+[a-zA-Z_] {invalid++;}
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter your text : ");
    yylex()
    printf("Identifier=%d\nConstants=%d\nInvalid Identifier=%d\n",ident_cnt,const_cnt,invalid);
    return 0;
}