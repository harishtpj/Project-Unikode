# Python program to print Pascal Triangle
# Created by M.V.Harish Kumar on 15-01-2024
from math import factorial as fact

n = int(input("Enter no. of rows: "))
for i in range(n):
    for _ in range(n-i+1):
        print(end=" ")
    
    for j in range(i+1):
        print(fact(i)//(fact(j) * fact(i-j)), end=" ")

    print()