(* Simple greeter program in ocaml *)
(* Written by M.V.Harish Kumar on 28-05-2024 *)
open Printf
let () =
  print_string "Please enter your name: ";
  let x = read_line () in
    printf "Hello, %s!Hope you're fine.\n" x