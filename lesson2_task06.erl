-module(lesson2_task06).
-export([is_palindrome/1]).


is_palindrome(L) -> is_palindrome(L,reverse(L)).

is_palindrome(A,A) -> true;
is_palindrome(_,_) -> false.

reverse(R) -> reverse(R,[]).

reverse([],R) -> R;
reverse([H|T],R) -> reverse(T, [H|R]).
