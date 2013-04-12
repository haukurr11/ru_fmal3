numElements(0,[]).
numElements(N,[_|T]) :- numElements(N_TAIL,T), N is N_TAIL+1.