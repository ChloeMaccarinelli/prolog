male(pierre).
male(jules).
male(paul).
male(léo).
male(marc).
male(albert).
male(arthur).
male(léopold).

femelle(marie).
femelle(chloée).
femelle(cathy).
femelle(léa).
femelle(sophie).
femelle(julie).

enfant(jules,pierre).
enfant(jules,marie).
enfant(paul,pierre).
enfant(paul,marie).
enfant(léa,pierre).
enfant(léa,marie).
enfant(marc,chloée).
enfant(marc,jules).
enfant(sophie,chloée).
enfant(sophie,jules).
enfant(julie,chloée).
enfant(julie,jules).
enfant(albert,paul).
enfant(albert,cathy).
enfant(arthur,léa).
enfant(arthur,léo).
enfant(léopold,léa).
enfant(léopold,léo).

mari(pierre,marie).
mari(jules,chloée).
mari(paul,cathy).
mari(léo,léa).


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

