nat(0).
nat(succ(X)) :- nat(X).

/*
?- nat(succ(succ(succ(0)))).
true.

?- nat(X).
X = 0 ;
X = succ(0) ;
X = succ(succ(0)) ;
X = succ(succ(succ(0))) 
*/

add(0,X,X).
add(succ(X), Y, succ(Z)) :- add(X, Y, Z).


nat2int(0,0).
nat2int(succ(X),Int):- nat2int(X,Int1), Int is Int1+1.

/*
?- nat2int(succ(succ(0)),N).
N = 2.
*/

int2nat(0,0).
int2nat(Int,succ(X)):- int2nat(Int1, X), Int is Int1+1, !.
