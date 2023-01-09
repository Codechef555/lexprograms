%{
    #include<stdio.h>
    int tchar=0;
    int tword=0;
    int tline=0;
%}

%%
[\n] {tline++;tword++;}
[\t] {tword++;}
[^\n\t] {tchar++;}
%%

int yywrap()
{
    return 1;
}
int main()
{
    yyin = fopen("f1.txt","r");
    yylex();
    printf("Characters=%d\nWords=%d\nLine=%d\n,tchar,tword,tline");
    return 0;
}