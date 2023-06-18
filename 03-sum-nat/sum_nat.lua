-- Lua program to sum numbers from 1 to n
-- Created by M.V.Harish Kumar on 18-06-2023

function SumToN(n)
    local sum = 0
    for i = 1, n do
        sum = sum + i
    end
    return sum
end

io.write("Enter value for `n`: ")
local n = tonumber(io.read("*n"))
local ans = SumToN(n)
print(string.format("The sum from 1 to %d is %d", n, ans))
