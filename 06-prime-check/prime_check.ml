(* Ocaml program to check if a given number is prime *)
(* Written by M.V.Harish Kumar on 29-05-2024 *)
let is_prime = function
| 1 -> false
| 2 -> true
| n -> 
  if n < 1 then false
  else Seq.ints 2
    |> Seq.take_while (fun x -> x <= (n |> Int.to_float |> sqrt |> Float.to_int))
    |> Seq.for_all (fun x -> n mod x <> 0)

let () =
  print_endline "Prime number checker\n";
  print_string "Enter a number: ";
  let n = read_int () in
    if is_prime n then
      Printf.printf "%d is Prime\n" n
    else
      Printf.printf "%d is NOT Prime\n" n