%% Erlang program to generate multiplication tables
-module(mult_table).
-author("M.V.Harish Kumar").
-compile([{date, "2023-12-07"}]).
-export([main/0]).

gen_tables(N, T) ->
    io:format("~w Tables~n", [N]),
    Applier = fun(I) ->
        io:format("~w × ~w = ~w~n", [N, I, N*I])
    end,
    lists:foreach(Applier, lists:seq(1, T)).

main() ->
    {ok, [Number]} = io:fread("Enter the no. to generate tables: ", "~d"),
    {ok, [Times]} = io:fread("Enter the no. till which to generate: ", "~d"),
    gen_tables(Number, Times),
    erlang:halt(0).