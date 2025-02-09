# Elixir program to calculate additive primes under 500
# Written by M.V.Harish Kumar on 09-02-2025
defmodule AdditivePrimes do
  def list_it do
    2..500
    |> Enum.filter(&(is_prime?(&1) && (Integer.digits(&1) |> Enum.sum |> is_prime?)))
    |> Enum.map(&IO.inspect/1)
    |> length
    |> then(&(IO.puts "No. of additive primes less than 500: #{&1}"))
  end

  defp is_prime?(1), do: false
  defp is_prime?(2), do: true
  defp is_prime?(n) when n > 1 do
    2..(ceil(:math.sqrt n)) |> Enum.all?(&(rem(n, &1) != 0))
  end
end

IO.puts "Additive primes less than 500:"
AdditivePrimes.list_it
