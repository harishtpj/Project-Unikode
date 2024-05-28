(* Ocaml program to find sum of natural numbers *)
(* Written by M.V.Harish Kumar on 28-05-2024 *)
open Printf
let rec sum_to_n n =
  match n with
  | 0 -> 0
  | n -> n + sum_to_n (n-1)

let () =
  print_string "Enter value for `n`: ";
  let n = read_int () in
    printf "The sum from 1 to %d is %d\n" n (sum_to_n n)