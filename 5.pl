expr(A) :- term(A).
expr([A,+,C]) :- term(A),expr(C).

term(A) :- factor(A).
term([A,*,C]) :- factor(A),term(C).

factor(A) :- number(A).
factor(['(',A,')']) :- expr(A).
