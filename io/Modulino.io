#!/usr/bin/env io

Modulino := Object clone
Modulino meaningOfLife := 42

main := method(
    "Main: The meaning of life is #{Modulino meaningOfLife}" interpolate println
)

if (System args size > 0 and System args at(0) containsSeq("Modulino"), main)
