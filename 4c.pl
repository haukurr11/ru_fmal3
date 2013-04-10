leaves(nil,[]). 
leaves(t(X,nil,nil), [X]).
leaves(t(_,L,R), O) :- leaves(L,U),leaves(R,Z),append(U,Z,O).