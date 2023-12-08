%% Simple Tic tac toe game written in Erlang
-module(tic_tac_toe).
-author("M.V.Harish Kumar").
-compile([{date, "2023-12-08"}]).
-export([main/0]).

display_board([P1, P2, P3, P4, P5, P6, P7, P8, P9]) ->
    io:format("\t +-------+-------+-------+~n"),
    io:format("\t |       |       |       |~n"),
    io:format("\t |   ~p   |   ~p   |   ~p   |~n", [P1, P2, P3]),
    io:format("\t |       |       |       |~n"),
    io:format("\t +-------+-------+-------+~n"),
    io:format("\t |       |       |       |~n"),
    io:format("\t |   ~p   |   ~p   |   ~p   |~n", [P4, P5, P6]),
    io:format("\t |       |       |       |~n"),
    io:format("\t +-------+-------+-------+~n"),
    io:format("\t |       |       |       |~n"),
    io:format("\t |   ~p   |   ~p   |   ~p   |~n", [P7, P8, P9]),
    io:format("\t |       |       |       |~n"),
    io:format("\t +-------+-------+-------+~n").

victory_for([P1, P2, P3, P4, P5, P6, P7, P8, P9], Sign) ->
    ((P1 =:= Sign) and (P2 =:= Sign) and (P3 =:= Sign)) orelse
    ((P4 =:= Sign) and (P5 =:= Sign) and (P6 =:= Sign)) orelse
    ((P7 =:= Sign) and (P8 =:= Sign) and (P9 =:= Sign)) orelse
    ((P1 =:= Sign) and (P4 =:= Sign) and (P7 =:= Sign)) orelse
    ((P2 =:= Sign) and (P5 =:= Sign) and (P8 =:= Sign)) orelse
    ((P3 =:= Sign) and (P6 =:= Sign) and (P9 =:= Sign)) orelse
    ((P1 =:= Sign) and (P5 =:= Sign) and (P9 =:= Sign)) orelse
    ((P3 =:= Sign) and (P5 =:= Sign) and (P7 =:= Sign)).

free_fields(Board) -> [X || X <- Board, is_integer(X)].

move(Sign, Board, Pos) -> 
    case lists:member(Pos, free_fields(Board)) of
        true -> lists:sublist(Board, Pos-1) ++ [Sign] ++ lists:nthtail(Pos, Board);
        false -> io:format("Invalid Input~n")
    end.

play(user, Board) ->
    UserMoves = free_fields(Board),
    if
        UserMoves == [] ->
            io:format("Draw!~n");

        true ->
            display_board(Board),
            {ok, [Pos]} = io:fread("Enter your move: ", "~d"),
            MovedBoard = move(o, Board, Pos),
            case victory_for(MovedBoard, o) of
                true ->
                    display_board(MovedBoard),
                    io:format("You win the match!~n");
                false -> play(computer, MovedBoard)
            end
    end;


play(computer, Board) ->
    CompMoves = free_fields(Board),
    if
        CompMoves == [] ->
            io:format("Draw!~n");

        true ->
            Pos = lists:nth(rand:uniform(length(CompMoves)), CompMoves),
            MovedBoard = move(x, Board, Pos),
            case victory_for(MovedBoard, x) of
                true ->
                    display_board(MovedBoard),
                    io:format("The Computer wins the match!~n");
                false -> play(user, MovedBoard)
            end
    end.

main() ->
    play(user, [1,2,3,4,x,6,7,8,9]),
    erlang:halt(0).

