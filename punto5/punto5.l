%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
[+-]?[0-9]+(\.[0-9]+)?       { printf("NUMERO REAL: %s\n", yytext); }
[+-]?[0-9]+(\.[0-9]+)?[+-][0-9]+(\.[0-9]+)?[ij] { printf("N COMPLEJO (F Rectangular): %s\n", yytext); }
[+-]?[0-9]+(\.[0-9]+)?[ij]   { printf("NUMERO IMAGINARIO: %s\n", yytext); }
[+-]?[0-9]+(\.[0-9]+)?\*[Ee]\^[+-]?[0-9]+(\.[0-9]+)?[ij] { printf("N COMPLEJO (F Polar): %s\n", yytext); }

[ \t\n]+    { /* ignora tabulaciones y saltos de linea*/ }
.           { printf("TOKEN DESCONOCIDO: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
