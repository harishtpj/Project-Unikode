# Number guessing game written in Elixir
# Created by M.V.Harish Kumar on 14-01-2024

defmodule NumGuess do
    def game() do
        game(:rand.uniform(100), 1, [])
    end

    def game(rnum, guesses, guessed_nums) do
        {unum, _} = IO.gets("Enter a number: ") |> Integer.parse

        cond do
            unum == rnum ->
                IO.puts "Yay! You've guessed the number in #{guesses} chances"
            
            (unum > 100) or (unum < 1) ->
                IO.puts "Guessed number is out of range"
                game(rnum, guesses+1, [unum|guessed_nums])
            
            true ->
                if unum < rnum do
                    IO.puts "You've guessed low"
                else
                    IO.puts "You've guessed high"
                end

                incr = Enum.member?(guessed_nums, unum) && 0 || 1
                game(rnum, guesses+incr, [unum|guessed_nums])
        end
    end
end

IO.puts "Number Guessing Game"
IO.puts "Guess the number which the computer thinks of"
IO.puts "The number is between 1 to 100"
NumGuess.game()