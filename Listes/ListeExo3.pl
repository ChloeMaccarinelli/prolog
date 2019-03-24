avantdernier([X,_],X).
avantdernier([X|L],R):-
    avantdernier(L,R).
