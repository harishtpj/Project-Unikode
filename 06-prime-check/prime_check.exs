# Elixir program to check if a given number is prime
# Created by M.V.Harish Kumar on 24-12-2023

defmodule Check do
  def prime?(1), do: false
  def prime?(2), do: true
  def prime?(n) when n > 1 do
    2..(trunc(:math.sqrt n)) |> Enum.all?(&(rem(n, &1) != 0))
  end
end

IO.puts "Prime numbers Checker\n"
{n, _} = IO.gets("Enter the number to check for prime: ") |> Integer.parse
if Check.prime? n do
  IO.puts "#{n} is PRIME"
else
  IO.puts "#{n} is NOT a prime"
end
