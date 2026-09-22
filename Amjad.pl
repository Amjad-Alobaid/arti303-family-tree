male(abdullah).
male(khalid).
male(ahmad).

female(thuraya).
female(sarah).
female(maryam).
female(amjad).

parent(abdullah, sarah).
parent(thuraya, sarah).
parent(abdullah, maryam).
parent(thuraya, maryam).
parent(abdullah, amjad).
parent(thuraya, amjad).
parent(abdullah, khalid).
parent(thuraya, khalid).
parent(abdullah, ahmad).
parent(thuraya, ahmad).

father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
sister(X, Y) :- female(X), parent(P, X), parent(P, Y), X \= Y.
brother(X, Y) :- male(X), parent(P, X), parent(P, Y), X \= Y.
