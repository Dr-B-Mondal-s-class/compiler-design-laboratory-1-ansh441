%{//lex program to check if input has only alphabets and no other characters.
//macros of c programs
%}
characters [A-Za-z\t' ']+

%%
{characters} {printf("This contains alphabets");};
.+ {printf("This has other characters");};
%%

int main(){
    yylex();
}

int yywrap(void) {
   return 0;
}
