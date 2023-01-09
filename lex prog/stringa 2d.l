%{
    #include<stdio.h>
    int charcount=0;
%}

%%
[a-zA-Z]+ {
    if(yytext[0]=="a")
    {
        charcount++;
    }

          }
%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin=("f1.txt","r");
    yylex();
    printf("String Starts with a:%d\n",charcount);
    
    return 0;
}