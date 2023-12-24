# Python(v0.9) program to print the first n fibonacci terms
# Created by M.V.Harish Kumar on 24-12-2023
from string import atoi

def fib(n):
    if n in [0, 1]:
        return n
    else:
        return fib(n-1) + fib(n-2)

print 'Fibonacci series printer\n'
nterms = atoi(raw_input('Enter the number of terms to print: '))
print 'The first', nterms, 'terms of fibonacci series are:'
for i in range(nterms):
    print fib(i)
