# Elixir program to generate mersenne numbers
# Created by M.V.Harish Kumar on 24-12-2023

{n, _} = IO.gets("Number of mersenne numbers to generate: ") |> Integer.parse
m_list = Enum.map(1..n, &(Integer.pow(2, &1)-1))
IO.puts "The first #{n} mersenne numbers are:"
IO.puts "\t#{inspect(m_list)}"
