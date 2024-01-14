# Python program to print the no of occurances of characters
# Created by M.V.Harish Kumar on 14-01-2024
s = input("Enter a string: ")
freq = {}
for c in s:
    if c not in freq:
        freq[c] = s.count(c)

print("The no of occurances are:")
for ch, count in freq.items():
    print(f"\t{ch!r}: {count}")