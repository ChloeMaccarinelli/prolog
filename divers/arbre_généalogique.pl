



male(pierre).
male(jules).
male(paul).
male(leo).
male(marc).
male(albert).
male(arthur).
male(leopold).

femelle(chloe).
femelle(marie).
femelle(cathy).
femelle(lea).
femelle(sophie).
femelle(julie).

enfant(jules,pierre).
enfant(paul,pierre).
enfant(lea,pierre).
enfant(jules,marie).
enfant(paul,marie).
enfant(lea,marie).


enfant(marc,jules).
enfant(sophie,jules).
enfant(julie,jules).
enfant(marc,chloe).
enfant(sophie,chloe).
enfant(julie,chloe).

enfant(albert,paul).
enfant(albert,cathy).

enfant(arthur,lea).
enfant(leopold,lea).
enfant(arthur,leo).
enfant(leopold,leo).

mari(pierre,marie).
mari(jules,chloe).
mari(paul,cathy).
mari(leo,lea).


male(X).
femelle(X).
enfant(X,Y).
mari(X,Y).
femme(X,Y):-mari(Y,X).
garçon(X,Y):-enfant(X,Y),male(X).
fille(X,Y):-enfant(X,Y),femelle(X).
frere_ou_soeur(X,Z):-enfant(X,Y),enfant(Z,Y),X\=Z.
frere(X,Y):-frere_ou_soeur(X,Y),male(X).
soeur(X,Y):-frere_ou_soeur(X,Y),femelle(X).
epoux(X,Y):-mari(X,Y).
epoux(X,Y):-femme(X,Y).
pere(X,Y):-enfant(Y,X),male(X).
mere(X,Y):-enfant(Y,X),femelle(X).
grandparents(X,Y):-enfant(Z,X),enfant(Y,Z).
grandpere(X,Y):-grandparents(X,Y),male(X).
grandmere(X,Y):-grandparents(X,Y),femelle(X).
oncle(X,Y):-frere(X,Z),enfant(Y,Z).
tante(X,Y):-soeur(X,Z),enfant(Y,Z).
cousins(X,Y):-oncle(Z,X),enfant(Y,Z).
cousins(X,Y):-tante(Z,X),enfant(Y,Z).

aieul(X,Y):-enfant(Y,X).
aieul(X,Y):-enfant(Y,Z),aieul(X,Z).
