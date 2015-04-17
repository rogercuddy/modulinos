#!/usr/bin/env lua

require("modulino")

local main
main = function(arg)
  print("Test: The meaning of life is " .. Modulino.meaningOfLife())
end

if type(package.loaded[(...)]) ~= "userdata" then
  main(arg)
else
  module(..., package.seeall)
end
