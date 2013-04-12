addUpList([],[]).
addUpList([X],[X]).
addUpList([X,Y],[X,NEXT]) :- NEXT is X+Y.
addUpList([H,NEXT|T],[H|NEWT]) :- addUpListHelper(NEXT,VAL,H),addUpList([VAL|T],NEWT).
addUpListHelper(PREV,VAL,ACC) :- VAL is ACC+PREV.