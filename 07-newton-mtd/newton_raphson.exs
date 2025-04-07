# Elixir program to implement Newton-Raphson Method
# Created by M.V.Harish Kumar on 09-02-2025

defmodule NewtonRaphson do
  def it(fun, x0, max_iter) do
    dfn = derive fun

    if fun.(x0) != 0 do
      IO.puts "#{String.pad_leading("Iteration no", 12)}|\t#{String.pad_leading("x0", 7)}| x"
      "=" |> String.duplicate(50) |> IO.puts
    end

    newton_rap(fun, dfn, x0, 0, max_iter)
  end

  defp derive(f) do
    iota = 1.0e-10
    fn x ->
      (f.(x + iota) - f.(x)) / iota
    end
  end

  defp newton_rap(fun, dfn, x0, iter, max_iter) do
    if iter == max_iter do
      IO.puts "Maximum iteration reached."
    else
      :io.format("~12s|\t~7.4f| ",["Iteration #{iter}", x0])
      derivative = dfn.(x0)

      if derivative == 0 do
        IO.puts "Derivation is 1."
      else
        x = x0 - (fun.(x0) / derivative)
        IO.puts x
        if fun.(x0) != 0 do
          newton_rap(fun, dfn, x, iter+1, max_iter)
        else
          IO.puts "The root is #{x0}"
        end
      end
    end
  end
end

fun = fn x ->
  2*x**2 - 7*x + 3
end
{x0, _} = IO.gets("Enter value for x0: ") |> Float.parse
max_iter = IO.gets("Enter maximum iteration: ") |> String.trim |> String.to_integer
NewtonRaphson.it(fun, x0, max_iter)
