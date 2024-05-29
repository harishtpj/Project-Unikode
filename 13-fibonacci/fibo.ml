(* Ocaml program to generate fibonacci numbers *)
(* Written by M.V.Harish Kumar on 29-05-2024 *)
let fib n =
  let rec fib_tr n a1 a2 =
    match n with
    | 0 -> a1
    | n -> fib_tr (n-1) (a1+a2) a1
  in fib_tr n 0 1

let () =
  print_endline "Fibonacci series printer\n";
  print_string "Enter no. of terms: ";
  let n = read_int () in
  Printf.printf "The first %d fibonacci terms are: \n\n" n;
  for i = 0 to n-1 do
    print_int (fib i);
    print_newline ()
  done
