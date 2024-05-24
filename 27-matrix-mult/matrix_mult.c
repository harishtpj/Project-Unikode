// C Program to multiply 2 matrices
// Written by M.V.Harish Kumar on 24-05-2024 
#include <stdio.h>

int main(int argc, char** argv) {
  if (argc != 2) {
    printf("Insufficient argument to run program\n");
    return -3;
  }
  
  int r1, c1, r2, c2;
  printf("Enter dimensions of matrix 1: ");
  scanf("%dx%d", &r1, &c1);
  printf("Enter dimensions of matrix 2: ");
  scanf("%dx%d", &r2, &c2);
  if (c1 != r2) {
    printf("Column of matrix 1 should be equal to rows of matrix 2\n");
    return -1;
  }

  FILE *fp = fopen(argv[1], "r");
  if (fp == NULL) {
    printf("Error opening file\n");
    return -2;
  }
  
  int mat1[r1][c1];
  int mat2[r2][c2];
  int resMat[r1][c2];

  printf("Product of:\n");
  for (int i = 0; i < r1; i++) {
    for (int j = 0; j < c1; j++) {
      fscanf(fp, "%d", &mat1[i][j]);
      printf("%d ", mat1[i][j]);
    }
    printf("\n");
  }

  printf("And\n");
  for (int i = 0; i < r2; i++) {
    for (int j = 0; j < c2; j++) {
      fscanf(fp, "%d", &mat2[i][j]);
      printf("%d ", mat2[i][j]);
    }
    printf("\n");
  }

  for (int i = 0; i < r1; i++) {
    for (int j = 0; j < c2; j++) {
      resMat[i][j] = 0;
      for (int k = 0; k < r2; k++) {
        resMat[i][j] += mat1[i][k] * mat2[k][j];
      }
      printf("%d ", resMat[i][j]);
    }
    printf("\n");
  }

  fclose(fp);
  return 0;
}

