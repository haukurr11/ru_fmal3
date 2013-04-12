expr(X) :- term(X).
expr(X) :- append(TERMPLUS,EXPR,X),append(TERM,[+],TERMPLUS),term(TERM),expr(EXPR).

term(X) :- factor(X).
term(X) :- append(FACTORMULT,EXPR,X),append(FACTOR,[*],FACTORMULT),factor(FACTOR),expr(EXPR).

factor([X]) :- number(X).
factor(X) :- append(['('],EXPR,RP_EXPR),append(RP_EXPR,[')'],X),expr(EXPR).