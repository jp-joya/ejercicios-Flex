%{
#include <stdio.h>
#include <string.h>
%}

%%
"computer"     { printf("ordenador"); }
"computers"    { printf("ordenadores"); }
"software"     { printf("software"); }
"hardware"     { printf("hardware"); }
"keyboard"     { printf("teclado"); }
"keyboards"    { printf("teclados"); }
"mouse"        { printf("ratón"); }
"mice"         { printf("ratones"); }
"network"      { printf("red"); }
"networks"     { printf("redes"); }
"server"       { printf("servidor"); }
"servers"      { printf("servidores"); }
"player"       { printf("jugador"); }
"players"      { printf("jugadores"); }
"game"         { printf("juego"); }
"games"        { printf("juegos"); }
"coach"        { printf("entrenador"); }
"coaches"      { printf("entrenadores"); }
"stadium"      { printf("estadio"); }
"stadiums"     { printf("estadios"); }
"referee"      { printf("árbitro"); }
"referees"     { printf("árbitros"); }
"tournament"   { printf("torneo"); }
"tournaments"  { printf("torneos"); }

.              { printf("%s", yytext); }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
