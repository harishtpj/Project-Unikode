# Elixir program to print the first n fibonacci numbers
# Created by M.V.Harish Kumar on 24-12-2023

defmodule Fib do
  def fib(n), do: fib(n, 0, 1)
  def fib(0, a1, _), do: a1
  def fib(n, a1, a2), do: fib(n-1, a1+a2, a1)
end

IO.puts "Fibonacci series printer"
{nterms, _} = IO.gets("Enter the no. of terms: ") |> Integer.parse
IO.puts "The first #{nterms} terms of fibonacci series are:\n"
Enum.each(1..nterms, fn i ->
  IO.puts Fib.fib(i)
end)
