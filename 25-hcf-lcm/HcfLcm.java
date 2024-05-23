// Java program to find HCF and LCM of 2 numbers
// Written by M.V.Harish Kumar on 22-05-2024 
import java.util.Scanner;

class HcfLcm {
  public static int hcf(int p, int q) {
    int tmp;
    while (q != 0) {
      tmp = p;
      p = q;
      q = tmp % q;
    }
    return p;
  }

  public static int lcm(int p, int q) {
    return p*q/hcf(p,q);
  }

  public static void main(String []args) {
    Scanner s = new Scanner(System.in);
    System.out.print("Enter no 1: ");
    int n1 = s.nextInt();
    System.out.print("Enter no 2: ");
    int n2 = s.nextInt();
    System.out.printf("HCF = %d LCM = %d\n", hcf(n1,n2), lcm(n1,n2));
  }
}
