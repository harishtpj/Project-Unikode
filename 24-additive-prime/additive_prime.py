# Python program to calculate additive primes less than 500
# Written by M.V.Harish Kumar on 21-05-2024
def is_prime(n):
    if n == 2:
        return True

    for i in range(2,int(n**0.5)+1):
        if n % i == 0:
            return False

    return n > 1

print('Additive primes less than 500:')
n_primes = 0
for i in range(2, 500):
    sum_digits = sum([int(d) for d in str(i)])
    if is_prime(i) and is_prime(sum_digits):
        n_primes += 1
        print(i)
print(f"No. of additive primes less than 500: {n_primes}")
