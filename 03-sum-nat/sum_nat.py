# Python program to sum numbers from 1 to n
# Created by M.V.Harish Kumar on 31-10-2023

def sum_to_n(n):
    sum = 0
    for i in range(n+1):
        sum += i
    return sum

n = int(input("Enter value for `n`: "))
ans = sum_to_n(n)
print(f"The sum from 1 to {n} is {ans}")
