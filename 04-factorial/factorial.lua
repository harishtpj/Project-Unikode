-- Lua program to compute factorial
-- Uses recursion technique
-- Created by M.V.Harish Kumar on 18-06-2023

function Factorial(n)
    return (n <= 1) and 1 or (n * Factorial(n-1))
end

io.write("Enter value for `n`: ")
local n = tonumber(io.read("*n"))/1
local ans = Factorial(n)
print(string.format("%d! = %f", n, ans))