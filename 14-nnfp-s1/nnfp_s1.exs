# Elixir Solutions to the first 11 problems of the 99 FP series
# Written by M.V.Harish Kumar on 14-01-2024

defmodule NNFP_S1 do
    # P01
    def last([e]), do: e
    def last([_|t]), do: last(t)

    # P02
    def penultimate([_]), do: raise "No Such element"
    def penultimate([h|[_]]), do: h
    def penultimate([_|t]), do: penultimate(t)

    # P03
    def kth([h|_], 1), do: h
    def kth([_|t], k), do: kth(t,k-1)

    # P04
    defp length([], acc), do: acc
    defp length([_|t], acc), do: length(t, acc+1)
    def length(l), do: length(l, 0)

    # P05
    defp reverse([], acc), do: acc
    defp reverse([h|t], acc), do: reverse(t, [h|acc])
    def reverse(l), do: reverse(l, [])

    # P06
    def palindrome?(l), do: l == reverse(l)

    # P07
    def flatten(list), do: flatten(list, [])
    defp flatten([h], acc), do: flatten(h, acc)
    defp flatten([h|t], acc), do: flatten(h, flatten(t, acc))
    defp flatten(n,acc), do: [n|acc]

    # P08
    def compress([]), do: []
    def compress([h|t]), do: [h | (for x <- compress(t), x != h, do: x)]

    # P09
    def pack([h|t]), do: tl pack([], [], [h|t], [h])

    def pack(final_ans, ans_ls, [curr_h | curr_t], elem) when curr_h == elem do
        pack(final_ans, ans_ls ++ [elem], curr_t, elem)
    end

    def pack(final_ans, ans_ls, [curr_h | curr_t], _) do
        pack(final_ans ++ [ans_ls], [], [curr_h | curr_t], curr_h)
    end

    def pack(final_ans, ans_ls, [], _), do: final_ans ++ [ans_ls]

    # P10
    def rle(list) do
        for packet <- pack(list), into: [], do: {Kernel.length(packet), hd packet}
    end

    # P11
    def rle_mod(list) do
        for packet <- pack(list), into: [] do
            if Kernel.length(packet) == 1 do
                hd packet
            else
                {Kernel.length(packet), hd packet}
            end
        end
    end
end