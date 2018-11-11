"exec" "gst" "-f" "$0" "$0" "$@"
"exit"

Object subclass: Modulino [
    Modulino class >> meaningOfLife [ ^42 ]
]

| main |

main := [
    Transcript show: 'Main: The meaning of life is ', ((Modulino meaningOfLife) printString); cr.
].

(((Smalltalk getArgc) > 0) and: [ ((Smalltalk getArgv: 1) endsWith: 'modulino.st') ]) ifTrue: [
    main value.
].
