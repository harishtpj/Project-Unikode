# Elixir program to find sum square difference
# Written by M.V.Harish Kumar on 06-02-2025
sum_squares = 1..100 |> Enum.map(&(&1**2)) |> Enum.sum
square_sum = 1..100 |> Enum.sum |> :math.pow(2)
IO.puts "Sum of squares: #{sum_squares}"
IO.puts "Square of sum: #{square_sum}"
IO.puts "Difference: #{square_sum - sum_squares}"
