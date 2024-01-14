# Elixir program to check for leap year
# Created by M.V.Harish Kumar on 14-01-2024

leap? = fn yr ->
    (rem(yr, 4) == 0) and (rem(yr, 100) != 0) or (rem(yr, 400) == 0)
end

IO.puts "Leap year checker"
{yr, _} = IO.gets("Enter a year: ") |> Integer.parse
if leap?.(yr) do
    IO.puts "#{yr} is a Leap year"
else
    IO.puts "#{yr} is NOT a Leap year"
end