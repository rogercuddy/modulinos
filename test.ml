(*

Compile:

ocamlc -o test -linkall str.cma scriptedmain.ml test.ml

Run:

./test

*)

let main () = print_endline ("Test: The meaning of life is " ^ string_of_int Scriptedmain.meaning_of_life)

let _ =
	let program = Sys.argv.(0)
	and re = Str.regexp "test" in
		try let _ = Str.search_forward re program 0 in
			main ()
		with _ -> ()