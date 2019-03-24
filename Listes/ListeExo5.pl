longueurssAcc([], 0).
longueurssAcc([_|T], N) :-
    longueurssAcc(T, N1),
    N is N1 + 1.
