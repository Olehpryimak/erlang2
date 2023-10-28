-module(lesson2_task05).
-export([reverse/1]).

reverse(R) -> reverse(R,[]).

reverse([],R) -> R;
reverse([H|T],R) -> reverse(T, [H|R]).
