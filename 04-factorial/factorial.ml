(* Ocaml program to compute factorial *)
(* Written by M.V.Harish Kumar on 28-05-2024 *)
open Printf
let fact n =
  let rec fact_tr n a =
    if n < 1 then a else fact_tr (n-1) (n*a)
  in fact_tr n 1

let () =
  print_string "Enter value for `n`: ";
  let n = read_int () in
    printf "%d! = %d\n" n (fact n)