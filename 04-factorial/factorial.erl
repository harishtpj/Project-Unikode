%% Erlang program to compute factorial
-module(factorial).
-author("M.V.Harish Kumar").
-compile([{date, "2023-12-07"}]).
-export([main/0]).

fact(N) when N >= 0 -> fact(N, 1).

fact(0, Acc) -> Acc;
fact(N, Acc) -> fact(N-1, Acc*N).

main() ->
    {ok, [N]} = io:fread("Enter value for `n`: ", "~d"),
    io:format("~w! = ~w~n", [N, fact(N)]),
    erlang:halt(0).