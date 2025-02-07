# Elixir program find sum of all multiples of 3 or 5
# Written by M.V.Harish Kumar on 06-02-2025
1..1000
|> Enum.filter(&(rem(&1,3) == 0 || rem(&1,5) == 0))
|> Enum.sum
|> then(&(IO.puts "Sum of all multiples of 3 or 5 under 1000: #{&1}"))
