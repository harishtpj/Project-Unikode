# Elixir program to generate multiplication tables
# Created by M.V.Harish Kumar on 22-12-2023

gen_tables = fn(number, times) ->
  IO.puts "#{number} Tables\n"
  Enum.each(1..times, fn i ->
    IO.puts "#{number} × #{i} = #{number*i}"
  end)
end

{n, _} = IO.gets("Enter the no. to generate tables: ") |> Integer.parse
{t, _} = IO.gets("Enter the no. till which to generate: ") |> Integer.parse
gen_tables.(n, t)
