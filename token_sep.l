%{
%}
%%
[0-9]+[.][0-9]+ printf("%s is a floating point number\n",yytext);
int|float|char|double|void printf("%s is a floating point number\n",yytext);
[0-9]+ printf("%s is an integer number\n",yytext);
[a-z]+[()] printf("%s is a function\n",yytext);
[a-z]+ printf("%s is an identifier\n",yytext);
[+*/-] printf("%s is an arithmetic operator\n",yytext);
= printf("%s is an assignment operator\n",yytext);
[<>]|[(<>)=]|[!=]|[==] printf("%s is an relational operator\n",yytext);
; printf("%s is an delimiter\n",yytext);
, printf("%s is an separator\n",yytext);
[#][a-z\.h]+ printf("%s is an preprocessor\n",yytext);
%%

int main()
{
    printf("Enter: ");
    yylex();
    return 0;
}

lex token_sep.l
cc lex.yy.c -ll
./a.out