# Python(v0.9) program to sum numbers from 1 to n
# Created by M.V.Harish Kumar on 24-12-2023
from string import atoi

def sum_to_n(n):
    sum = 0
    for i in range(n+1):
        sum = sum + i
    return sum

n = atoi(raw_input('Enter value for `n`: '))
ans = sum_to_n(n)
print 'The sum from 1 to', n, 'is', ans
