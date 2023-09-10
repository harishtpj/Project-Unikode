# Python program to compute factorial
# Created by M.V.Harish Kumar on 10-09-2023

def factorial(n):
    return 1 if n <= 1 else (n * factorial(n - 1))

n = int(input("Enter value for `n`: "))
ans = factorial(n)
print(f"{n}! = {ans}")