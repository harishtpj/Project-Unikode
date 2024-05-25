# Python program to display file statistics
# Written by M.V.Harish Kumar on 25-05-2024 
import sys

stats = dict.fromkeys(["lines", "words", "bytes"])
n_alphanum = 0

with open(sys.argv[1]) as file:
    ftxt = file.read()
    stats['bytes'] = len(ftxt)
    stats['words'] = len(ftxt.split())
    stats['lines'] = len(ftxt.splitlines())
    for ch in ftxt:
        if ch.isalnum():
            n_alphanum += 1

print(f"File statistics for {sys.argv[1]}")
for k, v in stats.items():
    print(f"\tNo. of {k} in file: {v}")
print("\t% of alphanumeric in file:", n_alphanum/stats['bytes']*100)
