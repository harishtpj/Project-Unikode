%% Erlang program to check if the given number is armstrong
-module(armstrong).
-author("M.V.Harish Kumar").
-compile([{date, "2023-12-08"}]).
-export([main/0]).

comp_armstrong(Num) -> 
    Exp = length(Num),
    comp_armstrong(Num, Exp, 0).

comp_armstrong([], _, Acc) -> Acc;
comp_armstrong([D|Ds], Exp, Acc) ->
    PowNum = math:pow(D-48, Exp),
    comp_armstrong(Ds, Exp, Acc+PowNum).

main() ->
    NumStr = string:trim(io:get_line("Enter a number: ")),
    ArmNum = comp_armstrong(NumStr),
    case list_to_integer(NumStr) == ArmNum of
        true -> io:format("~s is a Armstrong number~n", [NumStr]);
        false -> io:format("~s is NOT a Armstrong number~n", [NumStr])
    end,
    erlang:halt(0).

