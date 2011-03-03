#!/usr/bin/env ruby

def main
	puts "Directory: #{Dir.pwd}"

	puts "Program: #{$0}"

	puts "Number of Args: #{ARGV.length}"

	ARGV.each { |arg| puts "Arg: #{arg}" }
end

if __FILE__ == $0
	main
end