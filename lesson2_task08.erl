-module(lesson2_task08).
-export([compress/1]).

compress([A,A|T]) -> compress([A|T]);
compress([A,B|T]) -> [A|compress([B|T])];
compress(A) -> A. 
