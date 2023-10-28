-module(lesson2_task14).
-export([duplicate/1]).

duplicate(A) -> duplicate(A,[]).

duplicate([H|T], R) -> [H, H|duplicate(T, R)];
duplicate([], R) -> R.
