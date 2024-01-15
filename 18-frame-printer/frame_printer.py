# Python program to print words in a frame
# Written by M.V.Harish Kumar on 15-01-2024

s = input("Enter a string: ")
words = s.split()
max_len = max(len(word) for word in words)

print('*'*(max_len + 4))
for word in words:
    print(f"* {word:<{max_len}} *")
print('*'*(max_len + 4))