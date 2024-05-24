# Python program to add 2 matrices by reading from file
# Written by M.V.Harish Kumar on 23-05-2024
import sys, csv

def read_matrix(file_handle, rows):
    matrix = [next(file_handle) for _ in range(rows)]
    matrix = csv.reader(matrix, delimiter=" ")
    return [[int(x) for x in row] for row in matrix]

def print_matrix(mat):
    for row in mat:
        print(*row)

if __name__ == "__main__":
    rows = int(input("Enter no. of rows: "))
    cols = int(input("Enter no. of columns: "))
    with open(sys.argv[1]) as f:
        mat1 = read_matrix(f, rows)
        f.readline() # For matrix seperator
        mat2 = read_matrix(f, rows)
    res_mat = [[a+b for a, b in zip(mat1[r], mat2[r])] for r in range(rows)]
    print("Sum of:")
    print_matrix(mat1)
    print("And")
    print_matrix(mat2)
    print("is")
    print_matrix(res_mat)
    
