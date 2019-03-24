dernier([A],A).
dernier([X|L],R):-
    dernier(L,R).
