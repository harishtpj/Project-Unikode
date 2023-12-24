# Python(v0.9) program to generate multiplication tables
# Created by M.V.Harish Kumar on 24-12-2023
from string import atoi

def gen_tables(n, t):
    print n, 'Tables\n'
    for i in range(1, t+1):
        print n, 'x', i, '=', n*i

number = atoi(raw_input('Enter the no. to generate tables: '))
times = atoi(raw_input('Enter the no. till which to generate: '))
gen_tables(number, times)
