if true then ignore begin let kkkk _ _ _ _ _ _ _ _ = 0 in kkkk
"exec" "ocaml" "-w" "+a" "str.cma" "modulino.cmo" "$0" "$@" + let fi = 0 and exit _ _ = 0 in if false
then exit
fi
true else 0
end;;

let main () = print_endline ("Test: The meaning of life is " ^ string_of_int Modulino.meaning_of_life)

let _ =
    let program = Sys.argv.(0)
    and re = Str.regexp "test" in
        try let _ = Str.search_forward re program 0 in
            main ()
        with Not_found -> ()
