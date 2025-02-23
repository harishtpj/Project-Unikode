# Elixir program to find sum of all even fibonacci nums under 4 million
# Written by M.V.Harish Kumar on 06-02-2025

defmodule Fib do
  def even_fib_sum do
    Stream.from_index(1)
    |> Stream.map(&fib/1)
    |> Stream.take_while(&(&1 < 4_000_000))
    |> Enum.sum
  end

  def fibo(n), do: fib(n)

  defp fib(n), do: fib(n, 0, 1)
  defp fib(0, a, _), do: a
  defp fib(n, a, b), do: fib(n-1, a+b, a)
end

# IO.puts Fib.fibo(9)
IO.puts "Sum of all even fibonacci numbers under 4 million: #{Fib.even_fib_sum}"
