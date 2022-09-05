grammar cc;

// start variable
prog: (decl |expr)+ EOF
;
decl: ID ':' INT_TYPE '=' NUM
;
expr: expr '*' expr
    | expr '+' expr
    | ID
    | NUM
    ;

// Tokens
ID : [a-z][a-zA-Z0-9_]*; // identifiers
NUM : '0' | '-'?[1-9][+-9]*;
INT_TYPE : 'INT';
COMMENT : '--' ~[\r\n]* -> skip;
WS : [ \t\n]+ -> skip ;

    // variables are lower cases
    //Tokens must be either capital or...