# Elixir program to check if the given number is armstrong
# Created by M.V.Harish Kumar on 24-12-2023

n = IO.gets("Enter a number: ") |> String.trim
exp = String.length n
arm_num = n
|> String.graphemes
|> Enum.map(&(&1 |> String.to_integer |> Integer.pow(exp)))
|> Enum.sum

if String.to_integer(n) == arm_num do
  IO.puts "#{n} is an armstrong number"
else
  IO.puts "#{n} is NOT an armstrong number"
end
