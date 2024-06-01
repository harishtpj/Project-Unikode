(* Ocaml program to print file contents *)
(* Written by M.V.Harish Kumar on 01-06-2024 *)
let filename = Sys.argv.(1)
let border = String.make 20 '-'

let () =
  let file = open_in filename in
    let ftxt = really_input_string file (in_channel_length file) in
      close_in file;
      Printf.printf "Contents of %s:\n" filename;
      print_endline border;
      print_string ftxt;
      print_newline ();
      print_endline border