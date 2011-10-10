#!/usr/bin/env io

if (System args size > 0 and System args at(0) containsSeq("test"),
	"Test: The meaning of life is #{ScriptedMain meaningOfLife}" interpolate println)