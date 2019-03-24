LongueurAcc([],Acc,R):-
    Acc=R.
LongueurAcc([X|L],Acc,R):-
    Acc2 is Acc+1,
    LongueurAcc(L,Acc2,R).
