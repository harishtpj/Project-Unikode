# Simple tic tac toe game written in Elixir
# Written by M.V.Harish Kumar on 09-02-2025

defmodule TicTacToe do
  def play(:user, board) do
    case free_fields(board) do
      [] -> IO.puts "Draw!"
      _ ->
        display_board(board)
        pos = IO.gets("Enter your move: ") |> String.trim |> String.to_integer
        moved_board = move(:o, board, pos)
        if victory_for(moved_board, :o) do
          display_board(moved_board)
          IO.puts "You win the match"
        else
          play(:computer, moved_board)
        end
    end
  end

  def play(:computer, board) do
    comp_moves = free_fields(board)
    case comp_moves do
      [] -> IO.puts "Draw!"
      _ ->
        pos = Enum.random(comp_moves)
        moved_board = move(:x, board, pos)
        if victory_for(moved_board, :x) do
          display_board(moved_board)
          IO.puts "The Computer wins the match!"
        else
          play(:user, moved_board)
        end
    end
  end

  defp display_board([p1, p2, p3, p4, p5, p6, p7, p8, p9]) do
    IO.puts "\t +-------+-------+-------+"
    IO.puts "\t |       |       |       |"
    IO.puts "\t |   #{p1}   |   #{p2}   |   #{p3}   |"
    IO.puts "\t |       |       |       |"
    IO.puts "\t +-------+-------+-------+"
    IO.puts "\t |       |       |       |"
    IO.puts "\t |   #{p4}   |   #{p5}   |   #{p6}   |"
    IO.puts "\t |       |       |       |"
    IO.puts "\t +-------+-------+-------+"
    IO.puts "\t |       |       |       |"
    IO.puts "\t |   #{p7}   |   #{p8}   |   #{p9}   |"
    IO.puts "\t |       |       |       |"
    IO.puts "\t +-------+-------+-------+"
  end

  defp victory_for(board, sign) do
    set = List.duplicate(sign, 3)
    (Enum.slice(board, 0..2) === set) ||
    (Enum.slice(board, 3..5) === set) ||
    (Enum.slice(board, 6..8) === set) ||
    (Enum.slice(board, 0..8//3) === set) ||
    (Enum.slice(board, 1..8//3) === set) ||
    (Enum.slice(board, 2..8//3) === set) ||
    (Enum.slice(board, 0..8//4) === set) ||
    (Enum.slice(board, 2..7//2) === set)
  end

  defp free_fields(board) do
    for x <- board, is_integer(x), do: x
  end

  defp move(sign, board, pos) do
    if pos in free_fields(board) do
      List.update_at(board, pos-1, fn _ -> sign end)
    else
      IO.puts "Invalid Input"
    end
  end
end

TicTacToe.play(:user, List.update_at(Enum.to_list(1..9), 4, fn _ -> :x end))
