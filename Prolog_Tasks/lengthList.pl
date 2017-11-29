%Length of a list, write: length_1([L],N) and N will return the length of a given list

length_1(List, Length)          :- (var(Length) -> length_1(List, 0, Length);
                                    Length >= 0,
                                    length1(List, Length)).

length_1([], Length, Length).
length_1([_|L], N, Length)      :- N1 is N+1, length_1(L, N1, Length).

length1([], 0)                  :- !.
length1([_|L], Length)          :- N1 is Length-1, length1(L, N1).
