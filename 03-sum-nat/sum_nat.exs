# Elixir program to sum numbers from 1 to n
# Created by M.V.Harish Kumar on 10-12-2023

defmodule Sum do
  def nat(0, acc) do
    acc
  end

  def nat(n, acc) do
    nat(n-1, acc+n)
  end

  def nat(n) do
    nat(n, 0)
  end
end

{n, _} = IO.gets("Enter value for `n`: ") |> Integer.parse
ans = Sum.nat(n)
IO.puts "The sum from 1 to #{n} is #{ans}"
