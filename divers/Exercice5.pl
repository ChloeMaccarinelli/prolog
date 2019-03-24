male(pierre).
male(jules).
male(paul).
male(l�o).
male(marc).
male(albert).
male(arthur).
male(l�opold).

femelle(marie).
femelle(chlo�e).
femelle(cathy).
femelle(l�a).
femelle(sophie).
femelle(julie).

enfant(jules,pierre).
enfant(jules,marie).
enfant(paul,pierre).
enfant(paul,marie).
enfant(l�a,pierre).
enfant(l�a,marie).
enfant(marc,chlo�e).
enfant(marc,jules).
enfant(sophie,chlo�e).
enfant(sophie,jules).
enfant(julie,chlo�e).
enfant(julie,jules).
enfant(albert,paul).
enfant(albert,cathy).
enfant(arthur,l�a).
enfant(arthur,l�o).
enfant(l�opold,l�a).
enfant(l�opold,l�o).

mari(pierre,marie).
mari(jules,chlo�e).
mari(paul,cathy).
mari(l�o,l�a).


femme(X,Y):-mari(Y,X).
gar�on(X,Y):-enfant(X,Y),male(X).
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

