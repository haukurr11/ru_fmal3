leaves(nil,[]). 
leaves(t(X,nil,nil), [X]).
leaves(t(_,L,R),LEAVES) :- leaves(L,LEAVES_L),leaves(R,LEAVES_R),append(LEAVES_L,LEAVES_R,LEAVES).