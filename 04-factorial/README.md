# 4. The `Factorial` program
The `Factorial` program asks the user for a number n and prints the product of the numbers 1 to n

This problem is taken from collection [1](https://github.com/harishtpj/Project-Unikode/blob/master/README.md#%E2%84%B9-about)

# 🛠 Things used
- Basic I/O
- String Format
- Loops / Recursion
- Conditionals
- Functions


# Important observations
- In Lua, when factorial function uses an integer, it gets overflowed when computing 21!. Thus, float conversion is done by dividing the resultant input by 1.
- In earlier version of Python(0.9), recursion is not supported, so I had to use loops to solve this problem. Also, the `int()` & `float()` functions doesn't accept string as input, thus the `atoi()` method from `string` module is used.