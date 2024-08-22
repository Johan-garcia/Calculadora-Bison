%{
#include "calc.tab.h"
%}

%%
[0-9]+          { yylval = atoi(yytext); return NUMBER; }
[ \t]+          { /* Ignorar espacios */ }
\n              { return EOL; }
[-+*/()]        { return yytext[0]; }
.               { /* Ignorar caracteres no reconocidos */ }
%%

int yywrap() {
    return 1;
}
