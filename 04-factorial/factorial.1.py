# Python(v0.9) program to compute factorial
# Created by M.V.Harish Kumar on 10-09-2023
from string import atoi

def factorial(n):
    prod = 1.0
    for i in range(2, n + 1):
        prod = prod * float(i)
    return prod

n = raw_input('Enter value for `n`: ')
ans = factorial(atoi(n))
print n + '! =', ans
