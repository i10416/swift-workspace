grammar Query;

// Parser
expr: term | expr OR_OP term;
term: factor | term AND_OP factor;
factor: keywords | NOT_OP keywords;
keywords: '(' expr ')' | anychars;
anychars: ANYCHARS;

// Lexer

AND_OP: 'AND' ;
OR_OP: 'OR' ;
NOT_OP: 'NOT' ;

ANYCHARS: ~[/()\n\r" ]+ ;
WS  : [ \t\r\n]+ -> skip ;
