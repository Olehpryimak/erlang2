-module(lesson2_task13).
-export([decode/1]).

decode([]) -> [];
decode([H|T]) -> reverse(decode_help(H, T, [])).

decode_help(H, [], R) -> decode_tupple(H, R);
decode_help(C, [H|T], R) -> decode_help(H, T, decode_tupple(C, R)).

decode_tupple({1,A}, R) -> [A|R];
decode_tupple({N,A}, R) -> decode_tupple({N-1,A}, [A|R]).

reverse(R) -> reverse(R, []).

reverse([], R) -> R;
reverse([H|T], R) -> reverse(T, [H|R]).
