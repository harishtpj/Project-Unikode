# Elixir program to print file contents
# Written by M.V.Harish Kumar on 06-02-2025
fname = System.argv |> Enum.fetch!(0)
IO.puts "Contents of #{fname}"
"-" |> String.duplicate(20) |> IO.puts
File.read!(fname) |> IO.puts
"-" |> String.duplicate(20) |> IO.puts
