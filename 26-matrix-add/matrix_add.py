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
    res_mat = [[0]*cols for _ in range(rows)]
    for i in range(rows):
        for j in range(cols):
            res_mat[i][j] = mat1[i][j] + mat2[i][j]
    print("Sum of:")
    print_matrix(mat1)
    print("And")
    print_matrix(mat2)
    print("is")
    print_matrix(res_mat)
    
