factorielle(0,1).
factorielle(X,Y):-
    X1 is X-1,
    factorielle(X1,Z),
    Y is X*Z.

/* avec accumulateur
 *  factorielle(0,R,R).
 *  factorielle(X,Acc,R):-
 *  X>=1,
 *  Acc1 is X*Acc,
 *  X1 is X-1,
 *  factorielle(X1,Acc1,R).
 *  factorielle(X,R):-factorielle(X,1,R).
 */
