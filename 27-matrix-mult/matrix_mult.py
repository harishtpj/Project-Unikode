# Python program to multiply 2 matrices
# Written by M.V.Harish Kumar on 24-05-2024 
import sys, csv

def read_matrix(file, rows):
    matrix =  [next(file) for _ in range(rows)]
    matrix = list(csv.reader(matrix, delimiter=' '))
    return [[int(x) for x in row] for row in matrix]

def print_matrix(mat):
    for row in mat:
        print(*row)

if __name__ == "__main__":
    r1, c1 = tuple([int(x) for x in input("Enter dimension of matrix 1: ").split('x')])
    r2, c2 = tuple([int(x) for x in input("Enter dimension of matrix 2: ").split('x')])
    if c1 != r2:
        print("Columns of matrix 1 should be equal to Rows of matrix 2")
        exit(-1)
    with open(sys.argv[1]) as f:
        mat1 = read_matrix(f, r1)
        f.readline()
        mat2 = read_matrix(f, r2)
    res_mat = [[sum((a*b for a, b in zip(mat1_row, mat2_col))) for mat2_col in zip(*mat2)] for mat1_row in mat1]
    print("Product of:")
    print_matrix(mat1)
    print("And")
    print_matrix(mat2)
    print("is")
    print_matrix(res_mat)

