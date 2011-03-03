#!/usr/bin/env ruby

def main
	puts "Number of Args: #{ARGV.length}"

	puts "Program: #{$0}"

	ARGV.each { |arg| puts "Arg: #{arg}" }
end

if __FILE__ == $0
	main
end