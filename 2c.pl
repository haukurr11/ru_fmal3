insertElementAt(E, L,1, [E|L]).
insertElementAt(E, [L|T], 2, [L|N]) :- insertElementAt(E, T, 1, N).
insertElementAt(E, [L, H|T], P, [L|N] ) :- M is P-1,insertElementAt(E, [H|T], M, N).