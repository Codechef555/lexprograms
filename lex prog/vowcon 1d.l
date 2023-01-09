%{
    int vowel_ct=0;
    int conson_ct=0;
%}

%%
\n return 0;
[\t]+;
[aeiou] {vowel_ct++;}
[^aeiou] {conson_ct++;}
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter the string: ");
    yylex();
    printf("Vowels: %d\nConsonants: %d\n",vowel_ct,conson_ct);
    return 0;
}