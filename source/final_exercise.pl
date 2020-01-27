%% Q1

father(boss, solid).
father(boss, liquid).
male(solid).
male(liquid).

brother(X, Y):- father(A, X), father(A, Y), male(X), male(Y).

/*
?- brother(solid, liquid).
true.
*/

father(ryota, yuto).
father(hikaru, mayuka).
brother(ryota, hikaru).

cousin(X,Y):- father(FX, X), father(FY, Y), brother(FX, FY).

/*
?- cousin(yuto, mayuka).
true.
*/

father(masao, ryota).

grandfather(X,Y):- father(X,Z), father(Z,Y).

/*
?- grandfather(masao, yuto).
true.
*/
father(someone, masao).

ancestor(X,Y):- father(X,Y).
ancestor(X,Y):- father(X,Z), ancestor(Z, Y).

/*
?- ancestor(someone, yuto).
true ;
false.
*/



%% Q2

length([],0).
length([X|XS], Y):- length(XS, Y1), Y is Y1+1. 

/*
?- length([],Y).
Y = 0.

?- length([1,2,3],Y).
Y = 3.
*/


%% Q3

element(X,[X|T]):-!.
element(X,[_|T]):- element(X,T).
/*
?- element(1, [1,2,3]).
true.

?- element(2, [1,2,3]).
true.
*/

neg(Goal):- Goal, !, fail. 
neg(Goal).

disjoint([],Y).
disjoint([X|XS],Y):- neg(element(X,Y)),  disjoint(XS,Y).
/*
?- disjoint([1,2,3], [4,5,6]).
true.

?- disjoint([1,2,3], [1,5,6]).
false.
*/

union([],L,L).
union([X|XS],Y,Z):- element(X,Y),!,union(XS,Y,Z).
union([X|XS],Y,[X|ZS]):- union(XS,Y,ZS).
/*
?- union([1,2],[3,2],X).
X = [1, 3, 2].

?- union([1,2],[3,4],X).
X = [1, 2, 3, 4].

?- union([],[3,4],X).
X = [3, 4].

?- union([1,2],[],X).
X = [1, 2].
*/


%% Q4
s(X).

isNatural(0).
isNatural(s(X)):- isNatural(X).
/*
?- isNatural(0).
true.

?- isNatural(s(0)).
true.

?- isNatural(s(s(0))).
true.
*/

add(0,X,X).
add(s(X),Y,s(Z)):- add(X,Y,Z).
/*
?- add(0,s(0),X).
X = s(0).

?- add(s(0),s(0),X).
X = s(s(0)).
*/

nat2dec(0,0).
nat2dec(s(X),Dec):- nat2dec(X, Dec1), Dec is Dec1+1.
/*
?- nat2dec(0,X).
X = 0.

?- nat2dec(s(s(0)),X).
X = 2.
*/


%% Q5
max([M], M):- !.
max([X|XS], M):- max(XS, M), M > X.
max([X|XS], X):- max(XS, M), M <= X.