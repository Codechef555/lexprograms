%{
  int pos_no=0;
  int neg_no0;
%}

%%
q return 0;
^[-][0-9]+ {neg_no++;}
[0-9]+ {pos_no++;}
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter q to quit");
    yylex();
    printf("positive numbers=%d\n negative numbers=%d\n",pos_no,neg_no);
    return 0;

}