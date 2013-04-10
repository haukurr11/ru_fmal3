addUpList([],[]).
addUpList([X],[X]).
addUpList([X,Y],[X,NEXT]) :- NEXT is X+Y.
addUpList([H1,H2|T1],[H1|REST]) :- addUpListHelper(H2,TAIL,H1),addUpList([TAIL|T1],REST).
addUpListHelper(L1,L2,ACC) :- L2 is ACC+L1.