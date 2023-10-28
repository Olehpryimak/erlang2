-module(lesson2_task12).
-export([decode_modified/1]).

decode_modified([]) -> [];
decode_modified([H|T]) -> reverse(decode(H, T, [])).

decode(H, [], R) -> decode_tupple(H, R);
decode(C, [H|T], R) -> decode(H, T, decode_tupple(C, R)).

decode_tupple({1,A}, R) -> [A|R];
decode_tupple({N,A}, R) -> decode_tupple({N-1,A}, [A|R]);
decode_tupple(L,R) -> [L|R].

reverse(R) -> reverse(R, []).

reverse([], R) -> R;
reverse([H|T], R) -> reverse(T, [H|R]).
