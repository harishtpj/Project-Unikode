(* Ocaml program to print multiplication tables *)
(* Written by M.V.Harish Kumar on 28-05-2024 *)
open Printf
let gen_tables n t =
  printf "%d Tables\n\n" n;
  for i = 1 to t do
    printf "%d x %d = %d\n" n i (n*i)
  done

let () =
  print_string "Enter the no. to generate tables: ";
  let num = read_int () in
    print_string "Enter the no. till which to generate: ";
    let times = read_int () in
      gen_tables num times