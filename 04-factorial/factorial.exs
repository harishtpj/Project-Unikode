# Elixir program to compute factorial
# Created by M.V.Harish Kumar on 10-12-2023

defmodule Factorial do
  def fact(0, acc) do
    acc
  end

  def fact(n, acc) do
    fact(n-1, n*acc)
  end

  def fact(n) do
    fact(n, 1)
  end
end

{n, _} = IO.gets("Enter value for `n`: ") |> Integer.parse
ans = Factorial.fact(n)
IO.puts "#{n}! = #{ans}"
