#!/usr/bin/env lua

os = require("os")

function main(arg)
	print("Directory: " .. os.execute("pwd"))

	print("Program: " .. debug.getinfo(1).source)

	print("Number of Args: " .. #arg)

	for i,a in ipairs(arg) do
		print("Arg: " .. a)
	end

end

if type(package.loaded[(...)]) ~= "userdata" then
	main(arg)
else
	module(..., package.seeall)
end