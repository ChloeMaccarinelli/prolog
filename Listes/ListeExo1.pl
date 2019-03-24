copierL([],[]).
copierL(L1,L2):-
    L1=[X|L11],L2=[Y|L21],
    X=Y,
    copierL(L11,L21).

copier([],[]).
copier([X|L1], [Y|L2]):-
    X=Y,
    copier(L1,L2).
