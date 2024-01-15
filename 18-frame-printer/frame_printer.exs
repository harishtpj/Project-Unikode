# Elixir program to print words in a frame
# Created by M.V.Harish Kumar on 15-01-2024

words = IO.gets("Enter a string: ") |> String.trim |> String.split
mlen = words |> Enum.max_by(&String.length/1) |> String.length
"*" |> String.duplicate(mlen+4) |> IO.puts
for word <- words do
  IO.puts "* #{String.pad_trailing(word, mlen)} *"
end
"*" |> String.duplicate(mlen+4) |> IO.puts