#!/usr/bin/env lua

function main(arg)
	print("Number of Args: " .. #arg)

	print("Program: " .. debug.getinfo(1).source)

	for i,a in ipairs(arg) do
		print("Arg: " .. a)
	end

end

if type(package.loaded[(...)]) ~= "userdata" then
	main(arg)
else
	module(..., package.seeall)
end