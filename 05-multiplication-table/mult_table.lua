-- Lua program to generate multiplication tables
-- Created by M.V.Harish Kumar on 18-06-2023

function GenerateTables(number, times)
    print(number .. " Tables\n")
    for t = 1, times do
        print(string.format("%d × %d = %d", number, t, number*t))
    end
end

io.write("Enter the no. to generate tables: ")
local n = tonumber(io.read("*n"))
io.write("Enter the no. till which to generate: ")
local t = tonumber(io.read("*n"))
GenerateTables(n, t)