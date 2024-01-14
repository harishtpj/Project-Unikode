# Elixir program to count the no of occurances of characters
# Written by M.V.Harish Kumar on 14-01-2024
s = IO.gets "Enter a string: "
IO.puts "The no of occurances are:"
s
|> String.trim
|> String.graphemes
|> Enum.frequencies
|> Enum.each(fn {k, v} -> IO.puts "\t'#{k}': #{v}" end)