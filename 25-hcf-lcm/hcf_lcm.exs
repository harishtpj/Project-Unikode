# Elixir program to find HCF and LCM of 2 numbers
# Written by M.V.Harish Kumar on 09-02-2025
defmodule HcfLcm do
  def hcf(p, 0), do: p
  def hcf(p, q), do: hcf(q, rem(p, q))
  def lcm(p, q), do: p*q |> Integer.floor_div(hcf(p, q))
end

n1 = IO.gets("Enter no 1: ") |> String.trim |> String.to_integer
n2 = IO.gets("Enter no 2: ") |> String.trim |> String.to_integer
IO.puts "HCF = #{HcfLcm.hcf(n1, n2)} LCM = #{HcfLcm.lcm(n1, n2)}"
