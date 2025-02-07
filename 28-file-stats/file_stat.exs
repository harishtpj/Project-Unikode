# Elixir program to display file statistics
# Written by M.V.Harish Kumar on 07-02-2025

[fname | _] = System.argv
ftxt = File.read! fname
stats = %{
  "bytes" => byte_size(ftxt),
  "words" => ftxt |> String.split |> length,
  "lines" => ftxt |> String.split("\n") |> length
}
n_alnum = ftxt |> String.graphemes |> Enum.filter(&(String.match?(&1, ~r/[[:alnum:]]/))) |> length
IO.puts "File statistics for #{fname}"
for {k, v} <- stats do
  IO.puts "\tNo. of #{k} in file: #{v}"
end
IO.puts "\t% of alphanumeric in file: #{n_alnum/stats["bytes"]*100}"
