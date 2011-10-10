#!/usr/bin/env io

if (System args size >= 1 and System args at(0) containsSeq("test"),
	"Test: The meaning of life is #{ScriptedMain meaningOfLife}" interpolate println)