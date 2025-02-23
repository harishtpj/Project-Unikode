# Elixir program to implement the 100 doors problem
# Written by M.V.Harish Kumar on 09-02-2025
defmodule HundredDoors do
  def doors(n \\ 100), do: List.duplicate(false, n)

  def toggle(lst, step), do: toggle(lst, step, step-1)
  def toggle(lst, _, n) when n >= length(lst), do: lst
  def toggle(lst, step, n) do
    toggle(List.update_at(lst, n, &!/1), step, n+step)
  end

  def toggle_every(lst, n \\ 1)
  def toggle_every(lst, n) when n > length(lst), do: lst
  def toggle_every(lst, n) do
    IO.puts "ON #{n}"
    lst |> toggle(n) |> toggle_every(n+1)
  end
end

# for door_no <- 0..(length(doors)-1) do
#   IO.puts "Door #{door_no+1} is #{if Enum.fetch!(doors, door_no), do: 'open', else: 'closed' }"
# end

HundredDoors.doors
|> HundredDoors.toggle_every
|> Enum.with_index(1)
|> Enum.flat_map(fn {x, i} ->
  if x do
    IO.puts "Door #{i} is open"
    [i]
  else
    IO.puts "Door #{i} is closed"
    []
  end
end)
|> inspect
|> then(&(IO.puts "Only #{&1} doors are open"))
