-module(lesson2_task15).
-export([replicate/2]).

replicate([],_) -> [];
replicate([H|T], N) -> reverse(replicate(H, T, [], N)).

replicate(H, [], R, N) -> replicate_help(H, R, N);
replicate(Symbol, [H|T], R, N) -> replicate(H, T, replicate_help(Symbol, R, N), N).

replicate_help(Symbol, R, 1) -> [Symbol|R];
replicate_help(Symbol, R, N) -> replicate_help(Symbol, [Symbol|R], N-1).

reverse(R) -> reverse(R, []).

reverse([], R) -> R;
reverse([H|T], R) -> reverse(T, [H|R]).
