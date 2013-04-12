mymerge([],[],[]).
mymerge(L,[],L).
mymerge([],L,L).
mymerge([H1|T1],[H2|T2],[H1|RES]) :- H1=<H2,mymerge(T1,[H2|T2],RES).
mymerge([H1|T1],[H2|T2],[H2|RES]) :- H1>H2,mymerge([H1|T1],T2,RES).
