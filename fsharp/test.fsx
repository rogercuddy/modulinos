#light (*
	exec fsharpi --exec $0 --quiet
*)

#load "scriptedmain.fsx"

let main =
    printfn "Test: The meaning of life is %d" ScriptedMain.meaningOfLife