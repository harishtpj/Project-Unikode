(* Ocaml program to find sum of all multiples of 3 or 5 *)
(* Written by M.V.Harish Kumar on 29-05-2024 *)
let mult_sum n =
  let rec mult_sum_tr n a =
    if n = 0 then a
    else if (n mod 3 = 0) || (n mod 5 = 0) then
      mult_sum_tr (n-1) (a + n)
    else mult_sum_tr (n-1) a
  in mult_sum_tr (n-1) 0

let () =
  Printf.printf "Sum of all multiples of 3 or 5 under 1000: %d\n" (mult_sum 1000)