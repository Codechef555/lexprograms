%{
#include<stdio.h>
int i=0;
%}

%%
[0-9]+ {i=atoi(yytext);
      if(i%2==0)
      {
        printf("Even number");
      }
      else 
         printf("Odd number");
    }
%%

int yywrap()
{
    return 1;
}
int main()
{
    yylex();
    return 0;
}