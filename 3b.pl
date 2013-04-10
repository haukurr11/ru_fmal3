mysplit([],[],[]).
mysplit([H1],[H1],[]).
mysplit([H1,H2],[H1],[H2]).
mysplit([H1,H2|T1],[H1|L1],[H2|L2]) :- mysplit(T1,L1,L2).