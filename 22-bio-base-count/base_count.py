# Python program to pretty-print DNA sequence
# Written by M.V.Harish Kumar on on 19-05-2024 
import sys

tot_count = 0
bases = dict.fromkeys(list('ACTG'), 0)
order = 50
orderPrinted = False
with open(sys.argv[1]) as file:
    print('SEQUENCE:')
    for base in file.read():
        if base not in "ACTG": continue
        if not orderPrinted:
            print(f"\t{order}: ", end='')
            orderPrinted = True
        tot_count += 1
        bases[base] += 1
        print(base, end='')
        if tot_count == order:
            order += 50
            print()
            orderPrinted = False

    print('BASECOUNT:')
    for k, v in bases.items():
        print(f"\t{k}: {v}")
    print(f"\tTotal: {tot_count}")
