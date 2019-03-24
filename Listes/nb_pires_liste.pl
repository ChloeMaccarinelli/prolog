nbpairlist([],[]).
nbpairlist([_],[]).
nbpairlist([_,Y|L],[Y|M]):-nbpairlist(L,M).

inverse([],R,R).
inverse([_],R ,R).
inverse([_,Y|L],Acc, R):-
    Acc1 is [Y|Acc],
    inverse(L, Acc1, R).









