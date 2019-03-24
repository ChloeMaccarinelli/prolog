ville(sydney).
ville(auckland).
ville(honolulu).

typehebergement(hotêl).
typehebergement(chambre).
typehebergement(camping).

prixtransport(sydney,10).
prixtransport(auckland,20).
prixtransport(honolulu,30).

prixsemaine(sydney,hotêl,7000).
prixsemaine(sydney,chambre,87000).
prixsemaine(sydney,camping,9000).
prixsemaine(auckland,hotêl,4500).
prixsemaine(auckland,chambre,4700).
prixsemaine(auckland,honolulu,4900).
prixsemaine(honolulu,hotêl,6010).
prixsemaine(honolulu,chambre,6020).
prixsemaine(honolulu,camping,6050).

voyage(Ville, NbS, TypeH, Cout):-prixtransport(Ville,Ct), prixsemaine(Ville,TypeH,Ch),Cout is Ct+Ch*NbS.

ecovoyage(Ville, NbS, TypeH, Cout,CoutMax):-voyage(Ville, NbS, TypeH, Cout),Cout =< CoutMax.




