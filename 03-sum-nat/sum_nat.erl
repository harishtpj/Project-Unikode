%% Erlang program to sum numbers from 1 to n
-module(sum_nat).
-author("M.V.Harish Kumar").
-compile([{date, "2023-12-07"}]).
-export([main/0]).

sum_to_n(0, Acc) -> Acc;
sum_to_n(N, Acc) -> sum_to_n(N-1, Acc+N).

sum_to_n(N) -> sum_to_n(N, 0).

main() ->
    {ok, [N]} = io:fread("Enter value for `n`: ", "~d"),
    Ans = sum_to_n(N),
    io:format("The sum from 1 to ~w is ~w~n", [N, Ans]),
    erlang:halt(0).