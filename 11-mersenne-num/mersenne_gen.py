# Python program to generate mersenne numbers
# Created by M.V.Harish Kumar on 20-11-2023

n = int(input("Number of mersenne numbers to generate: "))
mersenne = []
for i in range(1, n+1):
    mersenne.append(2 ** i - 1)
print(f"The first {n} mersenne numbers are:")
print("\t", str(mersenne)[1:-1])
