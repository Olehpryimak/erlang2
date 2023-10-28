-module(lesson2_task02).
-export([but_last/1]).

but_last([]) -> [];
but_last([A]) -> [A];
but_last([A,B]) -> [A,B];
but_last([_|T]) -> but_last(T).
