-module(lesson2_task07).
-export([flatten/1]).

flatten([H|T]) -> reverse(flatten(T,flatten(H, []))).

flatten([H|T], R) -> flatten(T,flatten(H,R));
flatten([], R) -> R;
flatten(A, R) -> [A|R].

reverse(R) -> reverse(R, []).

reverse([],R) -> R;
reverse([H|T],R) -> reverse(T, [H|R]).
