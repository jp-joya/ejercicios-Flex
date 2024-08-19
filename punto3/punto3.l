%{
#include <stdio.h>
%}

%%
"+"         { printf("PLUS\n"); }
"-"         { printf("MINUS\n"); }
"*"         { printf("TIMES\n"); }
"/"         { printf("DIVIDE\n"); }
"|"         { printf("ABS\n"); }
"%"         { printf("MODULO\n"); }
"("         { printf("LEFT PARENTHESIS\n"); }
")"         { printf("RIGHT PARENTHESIS\n"); }
"^"         { printf("EXPONENT\n"); }
"="         { printf("EQUALS\n"); }
[0-9]+      { printf("NUMBER %s\n", yytext); }
[0-9]+\.[0-9]+ { printf("FLOATING NUMBER %s\n", yytext); }
\n         { printf("NEWLINE\n"); }
[ \t]     { /* Ignora tabulaciones*/ }
.           { printf("MYSTERY CHARACTER %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}

