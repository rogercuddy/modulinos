#light (*
	exec fsharpi --exec $0 --quiet
*)

let scriptname =
    let args = System.Environment.GetCommandLineArgs()

    let arg0 = args.[0]

    if arg0.Contains("fsi") then
        let arg1 = args.[1]
        if arg1 = "--exec" then
            args.[2]
        else
            arg1
    else
        arg0

#load "scriptedmain.fsx"

let main =
    if scriptname.Contains("test") then
        printfn "Test: The meaning of life is %d" ScriptedMain.meaningOfLife