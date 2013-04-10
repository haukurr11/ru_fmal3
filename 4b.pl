preorder(nil,[]). 
preorder(t(X,L,R), [X|O]) :- preorder(L,Y),preorder(R,Z),append(Y,Z,O).