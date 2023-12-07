%% Erlang Program to print "Hello, world!" in stdout
-module(hello_world).
-author("M.V.Harish Kumar").
-compile([{date, "2023-12-03"}]).
-export([main/0]).

main() ->
    io:format("Hello, world!~n"),
    erlang:halt(0).