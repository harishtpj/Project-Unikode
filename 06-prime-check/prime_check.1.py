# Python(v0.9) program to check if a given number is prime or not
# Created by M.V.Harish Kumar on 24-12-2023
import string, math

def is_prime(n):
    if n = 2:
        return 1
    
    for i in range(2, int(math.sqrt(n))):
        if n % i = 0:
            return 0
    
    return n > 1

print 'Prime number checker\n'
n = string.atoi(raw_input('Enter a number: '))
if is_prime(n):
    print n, 'is a PRIME number'
else:
    print n, 'is NOT a prime number'
