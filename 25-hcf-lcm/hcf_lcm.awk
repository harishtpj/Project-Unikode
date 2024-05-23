# AWK program to find HCF and LCM of 2 numbers
# Created by M.V.Harish Kumar on 22-05-2024
function hcf(p, q) {
  while (q != 0 ){
    t = p
    p = q
    q = t % q
  }
  return p
}

function lcm(p, q) {
  return p*q/hcf(p, q)
}

BEGIN {
  printf "Enter no 1: "
  getline n1
  printf "Enter no 2: "
  getline n2
  printf "HCF = %d LCM = %d", hcf(n1, n2), lcm(n1, n2)
}
