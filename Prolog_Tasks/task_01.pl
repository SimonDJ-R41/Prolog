%Exercise 01

%1 - John is smart
%2 - John is a student
%3 - Smart student is a student that works a lot
%4 - Bill is a student
%5 - Apple is located in the kitchen
%6 - Nanni is a person who lives in New York

student('John').
student('Bill').
worksAlot('Bill').

smart('John').
smart(X) :- student(X), worksAlot(X).

located(kitchen,'Apple').

lives('New York','Nanni').

%Exercise 02
/** Rule basis
1. Man(X): X is a man.
2. Woman(X): X is a woman.
3. Child(X, Y): X is a child of Y.
*/

%3 - Mother (X, Y)  : X is the mother of Y.
%4 - Son(X, Y)      : X is a son of Y.
%5 - Daughter(X, Y) : X is a daughter of Y.
%6 - GP(X, Y)       : X is the grand parent of Y.
%7 - GF(X, Y)       : X is the grandfather of Y.
%8 - GM(X, Y)       : X is the grandmother of Y.
%9 - Brother(X, Y)  : X is the brother of Y.
%10 - Sister(X, Y)  : X is the sister of Y.
%11 - Uncle(X, Y)   : X is the uncle of Y.
%12 - Cousin(X, Y)  : X is the cousin of Y.

parent(X,Y) :- child(Y,X).
father(X,Y) :- parent(X,Y), man(X).
mother(X,Y) :- parent(X,Y), woman(X).
son(X,Y)    :- child(X;Y), man(X).
gp(X,Y)     :- parent(X,Z), parent(Z,Y).
gf(X,Y)     :- gp(X,Y), man(X).
gm(X,Y)     :- gp(X,Y), woman(X).
bro(X,Y)    :- child(X,Z), child(Y,Z), man(X).
sister(X,Y) :- child(X,Z), child(Y,Z), woman(X).
uncle(X,Y)  :- bro(X,Z), parent(Z,Y), man(X).
aunt(X,Y)   :- sister(X,Y), parent(X,Y), woman(X).
cousin(X,Y) :- sister(X,Z), uncle(Z,Y).

%Exercise 03

/*Try to answer the following questions first “by hand” and then verify your answers using a
Prolog interpreter.
1. Which of the following are valid Prolog atoms?
loves(john,mary), Mary, _c1, ’Hello’
2. Which of the following are valid names for Prolog variables?
a, A, Paul, ’Hello’, a_123, _, _abc, x2
3. What would a Prolog interpreter reply given the following query?
?- f(a, b) = f(X, Y).
4. Would the following query succeed?
?- loves(mary, john) = loves(John, Mary).
Why ?
5. Assume a program consisting only of the fact
a(B, B).
How will the system react to the following query?
?- a(1, X), a(X, Y), a(Y, Z), a(Z, 100).
Why?*/

a(B,B).
%a(1,X), a(X,Y), a(Y,Z), a(Z,100). = giver FALSE

%s
