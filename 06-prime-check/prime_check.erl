%% Erlang program to check if a number is prime or not
%% Uses the O(sqrt(n)) algorithm
-module(prime_check).
-author("M.V.Harish Kumar").
-compile([{date, "2023-12-07"}]).
-export([main/0]).

is_prime(2) -> true;
is_prime(1) -> false;
is_prime(N) when N > 1 ->
    Sqrt = trunc(math:sqrt(N)),
    Pred = fun(I) -> N rem I == 0 end,
    not lists:any(Pred, lists:seq(2, Sqrt)).

main() ->
    io:format("Prime numbers Checker~n~n"),
    {ok, [Num]} = io:fread("Enter the number to check for prime: ", "~d"),
    case is_prime(Num) of
        true -> io:format("~w is Prime.", [Num]);
        false -> io:format("~w is NOT Prime.", [Num])
    end,
    erlang:halt(0).
