%{
    #include<stdio.h>
    int flag=0
%}

%%
([6-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9])
{flag=1;}
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter your mob num");
    yylex();
    if(flag==1) printf("valid bro");
    else printf("not valid bro");
    return 0;
}