%Exercise 01

/*Return the maximum of 2 numbers.*/
maxTwo(X,Y,Res)         :- Res is max(X,Y).

/*Return the maximum of 3 numbers.*/
maxThree(X,Y,Z,Res)     :- X1 is max(X,Y), Res is max(X1, Z).

/*Determine the sum of 2 numbers.*/
sum(X,Y,Res)            :- Res is X + Y.
%sum(10,20,Res) = 30.

/*Determine the sum of N numbers.*/


/*Check whether a given number is pair or not.*/
isEven(X)               :- R1 is mod(X,2), R1 is 0.

/*Determine the n! of the given number n.*/
nFactorial(0,1)         :- !.
nFactorial(X,Res)       :- P is X-1, nFactorial(P,S), Res is (X * S).

%Exercises 02

/*Find the first element of L.*/
firstL([ Res | _ ],Res).

/*Find the last element of L.*/
lastL([ Res | [] ],Res) :- !.
lastL([ _ | L ],Res)    :- lastL(L, Res).

/*Find an element x in the list */
findElem([ X | _ ],X)   :- !.
findElem([ _ | T ],X)   :- findElem(T,X).

/*Compute the number of elements in L*/
nElem([],0)             :- !.
nElem([ _ | T ],X)      :- nElem(T,X1), X is X1 + 1.

/*Return the sum of elements of L*/
sumL([],0).
sumL([Head | Tail], TotalSum) :-
  sumL(Tail,Rest),
    TotalSum is Head+Rest.

/*Find the number of occurrences of an element X in L.*/
occurences(_, [], 0). %returns the empty list
occurences(X, [X | T], N) :- !,
occurences(X, T, N1),
  N is N1 + 1.
occurences(X, [_ | T], N) :-
  occurences(X, T, N).

/*Check if the list L1 is the sub-List of L2*/


/*Return the inverse list of L.*/
reverse([],[]). %returns the inverse of an empty list
reverse([Head | Tail],InverseList) :-
  reverse(Tail,InverseTail), append(InverseTail,[Head],InverseList).

/*Compare the elements of two lists*/






























%linjeafstand, for at undgå irritation
