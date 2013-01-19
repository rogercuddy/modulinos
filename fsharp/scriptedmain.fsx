#light (*
	exec fsharpi --exec $0 --quiet
*)

module ScriptedMain

let meaningOfLife = 42

let main =
    printfn "Main: The meaning of life is %d" meaningOfLife