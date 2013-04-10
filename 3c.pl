mymerge([],[],[]).
mymerge(X,[],X).
mymerge([X],[],[X]).
mymerge([],Y,Y).
mymerge([H1|T1],[H2|T2],[H1|RES]) :- H1=<H2,mymerge(T1,[H2|T2],RES).
mymerge([H1|T1],[H2|T2],[H2|RES]) :- H1>H2,mymerge([H1|T1],T2,RES).

mysplit([],[],[]).
mysplit([H1],[H1],[]).
mysplit([H1,H2],[H1],[H2]).
mysplit([H1,H2|T1],[H1|L1],[H2|L2]) :- mysplit(T1,L1,L2).

mysort([],[]).
mysort([X],[X]).

mysort(L, X) :- mysplit(L,E,U),mysort(E,S),mysort(U,R),mymerge(S,R,X).