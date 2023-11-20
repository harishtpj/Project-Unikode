# Python program to generate multiplication tables
# Created by M.V.Harish Kumar on 20-11-2023

def gen_tables(number, times):
    print(f"{number} Tables")
    for i in range(1, times+1):
        print(f"{number} × {i} = {number*i}")

n = int(input("Enter the no. to generate tables: "))
t = int(input("Enter the no. till which to generate: "))
gen_tables(n, t)
