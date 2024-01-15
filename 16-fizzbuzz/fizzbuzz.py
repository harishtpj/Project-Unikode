# Python program to print FizzBuzz
# Created by M.V.Harish Kumar on 15-01-2024

n = int(input("Enter no. of terms: "))
for i in range(1, n+1):
    if i % 15 == 0:
        print("FizzBuzz")
    elif i % 3 == 0:
        print("Fizz")
    elif i % 5 == 0:
        print("Buzz")
    else:
        print(i)