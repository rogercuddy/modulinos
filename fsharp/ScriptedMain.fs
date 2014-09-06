#light (*
       exec fsharpi --exec "$0" --quiet
*)

namespace ScriptedMain

module ScriptedMain =
    let meaningOfLife = 42

    let main =
        printfn "Main: The meaning of life is %d" meaningOfLife
