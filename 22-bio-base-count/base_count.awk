function tot_count(arr) {
  sum = 0
  for (base in arr) {
    sum += arr[base]
  }
  return sum
}

BEGIN {
  FS=""
  printf "SEQUENCE:"
}

tot_count(bases) == order || order == 0 {
  order += 50
  printf "\n\t%s: ", order
}

/[ACTG]/ {
  for (i = 1;i <= NF;i++) {
    bases[$i] += 1
    printf $i
  }
}

END {
  print "\nBASE COUNT:"
  for (k in bases) {
    printf "\t%s: %d\n", k, bases[k]
  }
  printf "\tTotal: %d\n", tot_count(bases)
}

