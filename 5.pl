expr(A) :- term(A).
expr(L) :- append(N,C,L),append(A,[+],N),term(A),expr(C).

term(A) :- factor(A).
term(L) :- append(N,C,L),append(A,[*],N),term(A),expr(C).

factor([A]) :- number(A).
factor(A) :- number(A).
factor(L) :- append(['('],A,N),append(N,[')'],L),expr(A).