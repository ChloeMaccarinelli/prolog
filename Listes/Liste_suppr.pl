supprimer(X,L1,1,L2):-L1=[Y|L11], X=Y, L2=L11.
supprimer(X,[X|L],1,L).
supprimer(X,[Y|L],N,[Y|R]):-N>1,N1 is N-1, supprimer(X,L,R).



A REVOIR

