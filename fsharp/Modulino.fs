#light (*
    exec fsharpi --exec "$0" --quiet
*)

namespace Modulino

module Modulino =
    let meaningOfLife = 42

    let main =
        printfn "Main: The meaning of life is %d" meaningOfLife
