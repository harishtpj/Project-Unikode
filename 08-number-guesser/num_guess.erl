%% Number guessing game written in Erlang
-module(num_guess).
-author("M.V.Harish Kumar").
-compile([{date, "2023-12-08"}]).
-export([main/0]).


game() -> game(rand:uniform(100), 1, []).
game(Random_Num, Guesses, Guessed_Nums) ->
    {ok, [User_Num]} = io:fread("Enter your guess: ", "~d"),
    if
        User_Num == Random_Num ->
            io:format("Yay! You've guessed the number in ~w chances~n", [Guesses]);

        (User_Num > 100) orelse (User_Num < 1) ->
            io:format("Guessed number is out of range~n"),
            game(Random_Num, Guesses+1, Guessed_Nums);

        User_Num < Random_Num ->
            io:format("You've guessed low~n"),
            case lists:member(User_Num, Guessed_Nums) of
                true -> game(Random_Num, Guesses, Guessed_Nums);
                false -> game(Random_Num, Guesses+1, [User_Num|Guessed_Nums])
            end;

        User_Num > Random_Num ->
            io:format("You've guessed high~n"),
            case lists:member(User_Num, Guessed_Nums) of
                true -> game(Random_Num, Guesses, Guessed_Nums);
                false -> game(Random_Num, Guesses+1, [User_Num|Guessed_Nums])
            end
    end.

main() ->
    io:format("Number Guessing Game~n"),
    io:format("Guess the number which the computer thinks of~n"),
    io:format("The number is between 1 to 100~n"),
    game(),
    erlang:halt(0).
