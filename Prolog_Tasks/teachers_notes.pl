%Concatenation

%Append

%l1([1,2,3]).
%l2([3,4,5]).
append([],l1,l2).
append([ X | l1 ],l2,[ X | l3]) :- append(l1, l2, l3).

%member

member(X,[ X | Tail ])          :- member(X,Tail).

%Length of a list, returning only True if X is the length of the list

length_1(0,[])                  :- !.
length_1(X,[ L | L1 ])          :- length(L1, X1), X is X1 + 1.



















%linjeafstand
