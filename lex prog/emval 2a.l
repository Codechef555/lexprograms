%{
    #include<stdio.h>
    int flag=0;    
%}

%%
[a-z.A-Z.0-9]+@[a-z]+".com"|".in" {flag=1;}
%%

int main()
{
    printf("Enter your email");
    yylex();
    if(flag==1)
    {
        printf("Email is validated");
    }
    else
    {
        printf("Email is invalid");
    }

    return 0;
}