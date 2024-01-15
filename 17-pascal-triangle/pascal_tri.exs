# Elixir program to print Pascal Triangle
# Created by M.V.Harish Kumar on 15-01-2024
defmodule PascalTri do
    defp fact(n), do: fact(n, 1)
    defp fact(0, acc), do: acc
    defp fact(n, acc) when n > 0, do: fact(n-1, acc*n)
    def comb(n, r), do: div(fact(n), fact(r) * fact(n-r))
end

{n, _} = IO.gets("Enter no. of rows: ") |> Integer.parse
for i <- 0..(n-1) do
  for _ <- 0..(n-i), do: IO.write " "
  for j <- 0..i, do: IO.write "#{PascalTri.comb(i,j)} "
  IO.puts ""
end