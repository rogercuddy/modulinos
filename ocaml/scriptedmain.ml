if true then ignore begin let kkkk _ _ _ _ _ = 0 in kkkk
"exec" "ocaml" "str.cma" "$0" "$@" + let fi = 0 and exit _ _ = 0 in if false
then exit
fi
true else 0
end;;

(*

Interpret:

./scriptedmain.ml

Compile:

ocamlc -o scriptedmain -linkall str.cma scriptedmain.ml

Run:

./scriptedmain

*)

let meaning_of_life : int = 42

let main () = print_endline ("Main: The meaning of life is " ^ string_of_int meaning_of_life)

let _ =
	let program = Sys.argv.(0)
	and re = Str.regexp "scriptedmain" in
		try let _ = Str.search_forward re program 0 in
			main ()
		with Not_found -> ()