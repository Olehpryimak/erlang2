-module(lesson2_task01).
-export([last/1]).

last([A]) -> A;
last([_|T]) -> last(T);
last([]) -> [].
