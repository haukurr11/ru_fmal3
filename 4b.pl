preorder(nil,[]). 
preorder(t(X,L,R), [X|O]) :- preorder(L,OL),preorder(R,OR),append(OL,OR,O).