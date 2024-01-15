# Elixir program to print FizzBuzz
# Created by M.V.Harish Kumar on 15-01-2024

{n, _} = IO.gets("Enter no. of terms: ") |> Integer.parse
for i <- 1..n do
  cond do
    rem(i, 15) == 0 -> "FizzBuzz"
    rem(i, 3) == 0  -> "Fizz"
    rem(i, 5) == 0  -> "Buzz"
    true -> i
  end |> IO.puts
end
