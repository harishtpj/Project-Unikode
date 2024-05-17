# Python program to implement Jewels and Stones fn
# Written by M.V.Harish Kumar on 17-05-2024 
def jewelStones(jewels, stones):
    return sum(char in stones for char in jewels)

s1 = input("Enter string 1: ")
s2 = input("Enter string 2: ")
print(f"No. of common letters: {jewelStones(s1, s2)}")
