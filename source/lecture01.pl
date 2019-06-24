woman(mary).
woman(jody).
woman(yvonne).
playsAirGuitar(jody).
party.


happy(yvonne).
listens2music(mary).
listens2music(yvonne):- happy(yvonne).
playsAirGuitar(mary):- listens2music(mary).
playsAirGuitar(yvonne):- listens2music(yvonne).


/*ちょっと飛ばす*/

woman(mary).
woman(jody).
woman(yvonne).

loves(vincent, mary).
loves(mark, mary).
loves(pumpkin, honey_bunny).
loves(honey_bunny, pumpkin).

jealous(X, Y):- loves(X, Z), loves(Y, Z).

/*
?- woman(X).
X=mary;
X=jody

?- loves(mark, X), woman(X).
X = mary 
*/