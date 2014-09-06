#!/usr/bin/env io

ScriptedMain := Object clone
ScriptedMain meaningOfLife := 42

main := method(
	"Main: The meaning of life is #{ScriptedMain meaningOfLife}" interpolate println
)

if (System args size > 0 and System args at(0) containsSeq("ScriptedMain"), main)
