#!/usr/bin/env lua

ScriptedMain = {}

local meaningOfLife
meaningOfLife = function() return 42 end
ScriptedMain.meaningOfLife = meaningOfLife

local main
main = function(arg)
  print("Main: The meaning of life is " .. meaningOfLife())
end

if type(package.loaded[(...)]) ~= "userdata" then
  main(arg)
else
  module(..., package.seeall)
end
