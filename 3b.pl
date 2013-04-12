mysplit([],[],[]).
mysplit([X],[X],[]).
mysplit([X,Y],[X],[Y]).
mysplit([H,NEXT|T],[H|ODD],[NEXT|EVEN]) :- mysplit(T,ODD,EVEN).