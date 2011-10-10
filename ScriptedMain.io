#!/usr/bin/env io

ScriptedMain := Object clone
ScriptedMain meaningOfLife := 42

if (System args size >= 1 and System args at(0) containsSeq("ScriptedMain"),
	"Main: The meaning of life is #{ScriptedMain meaningOfLife}" interpolate println)