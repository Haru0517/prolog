

child(anna,bridget). 
child(bridget,caroline). 
child(caroline,donna). 
child(donna,emily).

descend(X,Y)  :-  child(X,Y).
descend(X,Y)  :-  descend(X,Z), descend(Z,Y).



directTrain(saarbruecken,dudweiler).
directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(stAvold,freyming).
directTrain(fahlquemont,stAvold).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).

travelFromTo(X,Y) :- directTrain(X,Y).
travelFromTo(X,Y) :- directTrain(X,Z), travelFromTo(Z,Y).


greater_than(succ(_), 0).
greater_than(succ(X), succ(Y)) :- greater_than(X,Y).


second(X, [_,X|_]).


tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine).

listtran([], []).
listtran([G|Gs], [E|Es]) :- tran(G,E), listtran(Gs, Es). 


palindrome(L) :- reverse(L, L).

%% last(List, X) :- reverse(List, [X|_]).

last([X], X).
last([_|L_tail], X) :- last(L_tail, X).