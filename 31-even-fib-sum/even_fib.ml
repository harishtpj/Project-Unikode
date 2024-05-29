(* Ocaml program to find sum of all even fibonacci numbers under 4 million *)
(* Written by M.V.Harish Kumar on 29-05-2024 *)
let fib n =
  let rec fib_tr n a1 a2 =
    match n with
    | 0 -> a1
    | n -> fib_tr (n-1) (a1+a2) (a1)
  in fib_tr n 0 1

let even_fib_sum =
  Seq.ints 1
  |> Seq.map fib
  |> Seq.take_while (fun x -> x < 4_000_000)
  |> Seq.filter (fun x -> x mod 2 = 0)
  |> Seq.fold_left (+) 0

let () =
  Printf.printf "The sum of all even fibonacci numbers less than 4 million: %d\n" even_fib_sum
