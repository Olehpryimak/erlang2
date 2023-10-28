-module(lesson2_task11).
-export([encode_modified/1]).

encode_modified(L) -> reverse(encode_modified(L, [])).

encode_modified([H|T], R) -> encode_modified(T, {1,H}, R).

encode_modified([A|T], {N,A}, R) -> encode_modified(T, {N+1,A}, R);
encode_modified([B|T], {1,S}, R) -> encode_modified(T, {1,B}, [S|R]);
encode_modified([B|T], S, R) -> encode_modified(T, {1,B}, [S|R]);
encode_modified([], {1,L}, R) -> [L|R];
encode_modified([], L, R) -> [L|R].

reverse(R) -> reverse(R, []).

reverse([],R) -> R;
reverse([H|T],R) -> reverse(T, [H|R]).
