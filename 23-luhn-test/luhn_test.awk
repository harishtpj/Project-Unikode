# AWK program to validate no. with luhn test
# Written by M.V.Harish Kumar on 20-05-2024 
function luhn_test(num) {
  num = num ""
  len = length(num)
  s1 = 0
  s2 = 0
  # Since I'm iterating in reverse, odd indices are even; even indices are odd
  if (len%2 != 0) {
    s1 += substr(num,1,1) + 0
    num = substr(num,2,len-1)
  }
  for (i=length(num); i >= 1; i--) {
    if (i % 2 == 0) {
      s1 += substr(num, i, 1) + 0
    } else {
      tmp = (substr(num, i, 1) + 0)*2
      s2 += int(tmp/10) + tmp%10
    }
  }
  if ((s1+s2)%10 == 0)
    return "true"
  return "false"
}
BEGIN {
  printf "Enter a no: "
  getline num
  printf "Is the number %d validates luhn: %s\n", num, luhn_test(num)
}

