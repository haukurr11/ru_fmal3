numElements(0,[]).
numElements(SUM,[_|TAIL]) :- numElements(TAILSUM,TAIL), SUM is TAILSUM+1.