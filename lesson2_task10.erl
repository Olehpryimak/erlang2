-module(lesson2_task10).
-export([encode/1]).

encode(L) -> reverse(encode(L, [])).

encode([H|T], R) -> encode(T, {1,H}, R).

encode([A|T], {N,A}, R) -> encode(T, {N+1,A}, R);
encode([B|T], S, R) -> encode(T, {1,B}, [S|R]);
encode([], L, R) -> [L|R].

reverse(R) -> reverse(R, []).

reverse([],R) -> R;
reverse([H|T],R) -> reverse(T, [H|R]).
