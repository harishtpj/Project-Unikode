%% Simple Greeter program in Erlang
-module(greeter).
-author("M.V.Harish Kumar").
-compile([{date, "2023-12-07"}]).
-export([main/0]).

main() ->
    Name = string:trim(io:get_line("Please enter your name: ")),
    io:format("Hello, ~s! Hope you're fine~n", [Name]),
    erlang:halt(0).
    