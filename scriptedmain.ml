(*

Compile:

ocamlc -o scriptedmain -linkall str.cma scriptedmain.ml

Run:

./scriptedmain

*)

let meaning_of_life = 42

let main () = print_endline ("Main: The meaning of life is " ^ string_of_int meaning_of_life)

let _ =
	let program = Sys.argv.(0)
	and re = Str.regexp "scriptedmain" in
		try let _ = Str.search_forward re program 0 in
			main ()
		with Not_found -> ()