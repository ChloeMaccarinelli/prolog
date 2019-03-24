/*sans accumulateur*/
sommeliste([], 0).
sommeliste([X|L], R) :-
   sommeliste(L,S),
    R is X + S.
/*avec accumulateur
  sommeliste(L,R):-
  sommeliste(L,0,R).
  sommeliste([X|L],Acc,R):-
   Acc1 is Acc+X,
  sommeliste(L,Acc1,R).*/
