%{
//macros of c programs
//lex program to check input is digit or not.
%}
digit [0-9]

%%
{digit} {printf("This is a digit");};
[A-Za-z0-9\/?%&@*]* {printf("This is not digit");};
%%

int main(){
    yylex();
}

int yywrap(void) {
   return 0;
}

