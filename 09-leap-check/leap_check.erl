%% Erlang program to check if a given year is leap
-module(leap_check).
-author("M.V.Harish Kumar").
-compile([{date, "2023-12-08"}]).
-export([main/0]).

is_leap(Year) ->
    (Year rem 4 == 0) and (Year rem 100 /= 0) or (Year rem 400 == 0).

main() ->
    io:format("Leap year checker~n"),
    {ok, [Year]} = io:fread("Enter the year: ", "~d"),
    case is_leap(Year) of
        true -> io:format("~w is a Leap year", [Year]);
        false -> io:format("~w is NOT a Leap year", [Year])
    end,
    erlang:halt(0).