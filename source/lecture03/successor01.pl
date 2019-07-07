nat(0).
nat(succ(X)) :- nat(X).

"
?- nat(succ(succ(succ(0)))).
true.

?- nat(X).
X = 0 ;
X = succ(0) ;
X = succ(succ(0)) ;
X = succ(succ(succ(0))) 
"

add(0,X,X).
add(succ(X), Y, succ(Z)) :- add(X, Y, Z)