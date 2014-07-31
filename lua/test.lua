#!/usr/bin/env lua

require("scriptedmain")

local main
main = function(arg)
  print("Test: The meaning of life is " .. ScriptedMain.meaningOfLife())
end

if type(package.loaded[(...)]) ~= "userdata" then
  main(arg)
else
  module(..., package.seeall)
end
