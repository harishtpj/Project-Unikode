-- Simple Greeter program in Lua
-- Created by M.V.Harish Kumar on 18-06-2023

io.write("Please enter your name: ")
local name = io.read()
print(string.format("Hello, %s! Hope you're fine", name))