ville(sydney).
ville(auckland).
ville(honolulu).

typeH(hotel).
typeH(camping).
typeH(chambre).

trajet(honolulu, 140000).
trajet(sydney, 70000).
trajet(auckland, 90000).

heberg(sydney, hotel, 100000).
heberg(aukland, hotel, 80000).
heberg(honolulu, hotel, 60000).
heberg(sydney, camping, 20000).
heberg(aukland, camping, 12000).
heberg(honolulu, camping, 6000).
heberg(sydney, chambre, 50000).
heberg(aukland, chambre, 20000).
heberg(honolulu, chambre, 18000).

voyage(Ville, NbS, TypeH, Cout):-trajet(Ville, Ct), heberg(Ville, TypeH, Ch),Cout is Ct+Ch*NbS.

ecovoyage(Ville, NbS, TyH, Cout, CoutMax) :-
	  voyage(Ville, NbS, TyH, Cout),
	  Cout =< CoutMax.
