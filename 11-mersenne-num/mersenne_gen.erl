%% Erlang program to generate mersenne numbers
-module(mersenne_gen).
-author("M.V.Harish Kumar").
-compile([{date, "2023-12-08"}]).
-export([main/0]).

main() ->
    {ok, [N]} = io:fread("Number of mersenne numbers to generate: ", "~d"),
    Mersenne = [trunc(math:pow(2, I) - 1) || I <- lists:seq(1, N)],
    io:format("The first ~w Mersenne Numbers are:~n\t~w", [N, Mersenne]),
    erlang:halt(0).