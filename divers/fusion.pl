fusion([],[],[]).
fusion([X|L1], [Y|L2], [X,Y|L]):-
    fusion(L1,L2,L).

member(X, [Y|L]):-
    X=Y;
    member(X,L).


member2(X, [X|L],true).
member2(X, [], false).
member2(X, [Y|L], R):-
    dif(X,Y),
    member2(X,L,R).


horsde(X, [X|L],false).
horsde(X, [], true).
horsde(X, [Y|L], R):-
    dif(X,Y),
    horsde(X,L,R).

horsde2(X,[]).
horsde2(X, [Y|L]):-
    dif(X,Y),
    horsde2(X,L).

differents([]).
differents([X|L]):-
    horsde2(X,L),
    differents(L).
