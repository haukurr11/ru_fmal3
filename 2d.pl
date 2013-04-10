segment( [], _ ).
segment( [H1|T1], [H1|T2] ) :- segment2( T1, T2 ).
segment( [H1|T1], [_|T2] ) :- segment( [H1|T1], T2 ).
segment2( [H1|T1], [H1|T2] ) :- segment2( T1, T2 ).
segment2( [], _ ) :- !.