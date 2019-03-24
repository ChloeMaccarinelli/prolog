kieme([X|L],0,X).
kieme([X|L],N,R):-
    N\=0,
    M is N-1,
    kieme(L,M,R).
