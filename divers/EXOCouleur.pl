coloriage(C1,C2,C3,C4) :-
    dif(C1,C2), dif(C1,C3), dif(C1,C4), dif(C2,C3), dif(C3,C4),
    couleur(C1),couleur(C2),couleur(C3),couleur(C4).
couleur(bleu).
couleur(jaune).
couleur(rouge).




