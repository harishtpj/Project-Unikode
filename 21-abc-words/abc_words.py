# Python program to find ABC words
# Written by M.V.Harish Kumar on 18-05-2024 
import sys

def count_ABC_words(fname):
    abc_count = 0
    word_count = 0
    with open(fname) as file:
        for line in file:
            if "a" in line and line.find('a') < line.find('b') < line.find('c'):
                print(line.strip())
                abc_count += 1
            word_count += 1
    return abc_count, word_count

abcs, words = count_ABC_words(sys.argv[1])
print(f"Out of {words} words, {abcs} words are ABC words!")
