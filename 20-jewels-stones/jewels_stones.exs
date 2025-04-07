# Elixir program to implement Jewels and Stones fn
# Written by M.V.Harish Kumar on 09-02-2025
jewel_stones = fn jewels, stones ->
  String.graphemes(jewels)
  |> Enum.map(&(String.contains?(stones, &1) && 1 || 0))
  |> Enum.sum
end

s1 = IO.gets("Enter string 1: ") |> String.trim
s2 = IO.gets("Enter string 2: ") |> String.trim
IO.puts "No. of common letters: #{jewel_stones.(s1, s2)}"
