grammar Stat;

program : varDecl* funcDecl+ EOF;

varDecl : CONST? varDef (AFFECT exprD)? SEMICOLON;
funcDecl : ID LPAR parameters? RPAR (COLON type)? block;

type : BOOLEANTYPE
     | NUMBERTYPE
     | DEVICETYPE
     ;

parameters : varDef(COMMA varDef)*;

varDef : type ID;

block : LBRACES (statement | varDecl)* RBRACES;

statement : IF LPAR exprD RPAR block                #ifStmt
          | IF LPAR exprD RPAR block ELSE block     #ifElseStmt
          | exprG AFFECT exprD SEMICOLON            #assignStmt
          | exprD SEMICOLON                         #exprStmt
          | RETURN exprD SEMICOLON                  #returnStmt
          ;

exprD : LPAR exprD RPAR                         #parens
      | exprG                                   #exprGExpr
      | ID LPAR (exprD (COMMA exprD)*)? RPAR    #callExpr

      // exprEnt copied here to avoid indirect recursion
      | NUMBER                                      #numberExpr
      | MINUS exprD                                 #unaryMinusExpr
      | exprD op=(TIMES | DIVIDE | MODULO) exprD    #timesDivideExpr
      | exprD op=(PLUS | MINUS) exprD               #plusMinusExpr

      // exprBool copied here to avoid indirect recursion
      | TRUE                                    #trueExpr
      | FALSE                                   #falseExpr
      | exprD op=(EQUAL | DIFF) exprD           #equalExpr
      | exprD op=(LT | GT | LTOE | GTOE) exprD  #relationExpr
      | exprD op=(AND | OR) exprD               #andOrExpr
      | NOT exprD                               #notExpr
      ;


exprG : ID;

//--------Words---------

// Groups
LPAR: '(';
RPAR: ')';
LBRACES: '{';
RBRACES: '}';

// Misc
COMMA: ',';
CONST: 'const';
SEMICOLON: ';';
DOT: '.';
COLON: ':';
RETURN: 'return';

// Operation
PLUS: '+';
MINUS: '-';
TIMES: '*';
DIVIDE: '/';
MODULO: '%';

// Affecation
AFFECT: '=';

// Comparaison
EQUAL: '==';
DIFF: '!=';
LT: '<';
GT: '>';
LTOE: '<=';
GTOE: '>=';
NOT: '!';

// Boolean
TRUE: 'true';
FALSE: 'false';
AND: '&&';
OR: '||';

// Types
BOOLEANTYPE: 'bool';
NUMBERTYPE: 'number';
DEVICETYPE: 'device';

// Instructions
IF: 'if';
ELSE: 'else';

ID : LETTER (LETTER | DIGIT)* ;
fragment DIGIT : '0'..'9';
fragment LETTER : 'A'..'Z' | 'a'..'z';

NUMBER : '-'? INT ('.' [0-9] +)?;
fragment INT : '0' | [1-9] [0-9]*;

COMMENT : ('/*' (.*?) '*/' | '//' .*? ('\r'?'\n' | EOF)) -> skip;

WS : [ \t\n]+ -> skip;
