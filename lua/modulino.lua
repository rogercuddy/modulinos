#!/usr/bin/env lua

Modulino = {}

local meaningOfLife
meaningOfLife = function() return 42 end
Modulino.meaningOfLife = meaningOfLife

local main
main = function(arg)
  print("Main: The meaning of life is " .. meaningOfLife())
end

if type(package.loaded[(...)]) ~= "userdata" then
  main(arg)
else
  module(..., package.seeall)
end
