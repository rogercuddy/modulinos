#!/usr/bin/env ruby

def meaning_of_life
    42
end

def main
    puts "Main: The meaning of life is #{meaning_of_life}"
end

main if $PROGRAM_NAME == __FILE__
