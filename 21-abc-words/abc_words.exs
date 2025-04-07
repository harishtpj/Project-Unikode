# Elixir program to find ABC words
# Written by M.V.Harish Kumar on 09-02-2025

ftxt = System.argv |> Enum.fetch!(0) |> File.read! |> String.split
wd_cnt = ftxt |> length
ftxt |>
Enum.filter(&(String.match?(&1, ~r/^[^bc]*a[^c]*b.*c/))) |>
Enum.map(fn x -> IO.puts(x); x end)
|> length
|> then(&(IO.puts "Out of #{wd_cnt} words, #{&1} words are ABC words!"))
