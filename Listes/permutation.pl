
ins(X,L,[X|L]).
ins(X,[A|R],[A|I]):-ins(X,R,I).



perm([],[]).
perm([X|L],M):-perm(L,N),ins(X,N,M).

/*hanoi

move(1,X,Y,_) :-

write("Move top disk from"),

write(X),

write("to"),

write(Y),

nl.

move(N,X,Y,Z) :-

N>1,

M is N-1,

move(M,X,Z,Y),

move(1,X,Y,_),

move(M,Z,Y,X).
*/

hanoi(0,D,I,F).
hanoi(N,D,I,F):-N1 is N-1,
    hanoi(N1,D,F,I),
    write(D),write("->"),writeln(F),
    hanoi(N1,I,D,F).
/****/

