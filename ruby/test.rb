#!/usr/bin/env ruby

require './modulino'

def main
  puts "Test: The meaning of life is #{meaning_of_life}"
end

main if $PROGRAM_NAME == __FILE__
