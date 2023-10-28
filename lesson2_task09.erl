-module(lesson2_task09).
-export([pack/1]).

pack(L) -> reverse(pack(L, [])).

pack([H|T], R) -> pack(T, [H], R).

pack([A|T], [A|T2], R) -> pack(T, [A, A | T2], R);
pack([B|T], [A|T2], R) -> pack(T, [B], [[A|T2]|R]);
pack([], L, R) -> [L|R].

reverse(R) -> reverse(R, []).

reverse([],R) -> R;
reverse([H|T],R) -> reverse(T, [H|R]).
