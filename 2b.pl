removeElement(E, [E|T], T).
removeElement(E, [L, H|T], [L|NEWT]) :- removeElement(E, [H|T], NEWT).