#!/usr/bin/env io

main := method(
    "Test: The meaning of life is #{Modulino meaningOfLife}" interpolate println
)

if (System args size > 0 and System args at(0) containsSeq("test"), main)
