insertElementAt(E, L, 1, [E|L]).
insertElementAt(E, [L|T], 2, [L|NEWT]) :- insertElementAt(E, T, 1, NEWT).
insertElementAt(E, [L, H|T], P, [L|NEWT] ) :- DECP is P-1,insertElementAt(E, [H|T], DECP, NEWT).