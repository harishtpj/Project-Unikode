(* Ocaml program to find sum square difference *)
(* Written by M.V.Harish Kumar on 30-05-2024 *)
let n = 100

let sum_squares =
  Seq.ints 1
  |> Seq.take_while (fun x -> x <= n)
  |> Seq.map float
  |> Seq.map (fun x -> x ** 2.)
  |> Seq.fold_left (+.) 0.
  |> truncate

let square_sum = truncate ((float ((n*(n+1))/2)) ** 2.)

let () =
  Printf.printf "Sum of squares: %d\n" sum_squares;
  Printf.printf "Squares of sum: %d\n" square_sum;
  Printf.printf "Difference: %d" (square_sum - sum_squares)
