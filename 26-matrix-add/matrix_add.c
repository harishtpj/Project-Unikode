// C Program to add 2 matrices
// Written by M.V.Harish Kumar on 24-05-2024 
#include <stdio.h>

int main(int argc, char** argv) {
  if (argc != 2) {
    printf("Insufficient args to run program\n");
    return -2;
  }
  int rows, cols;
  printf("Enter no. of rows: ");
  scanf("%d", &rows);
  printf("Enter no. of columns: ");
  scanf("%d", &cols);

  FILE *fp = fopen(argv[1], "r");
  if (fp == NULL) {
    printf("Error opening file.\n");
    return -1;
  }
  
  int mat1[rows][cols], mat2[rows][cols], resMat[rows][cols];

  printf("Sum of:\n");
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      fscanf(fp, "%d", &mat1[i][j]);
      printf("%d ", mat1[i][j]);
    }
    printf("\n");
  }
  
  printf("And\n");
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      fscanf(fp, "%d", &mat2[i][j]);
      printf("%d ", mat2[i][j]);
    }
    printf("\n");
  }

  printf("is\n");
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      resMat[i][j] = mat1[i][j] + mat2[i][j];
      printf("%d ", resMat[i][j]);
    }
    printf("\n");
  }

  fclose(fp);
  return 0;
}

