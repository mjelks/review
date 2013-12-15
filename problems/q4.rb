#!/usr/bin/ruby

puts 'Hello, world!'

# Given a string, replace all spaces with %20

def space_filler string, replacement="%20"
    result = string.gsub(/ /,replacement)    
    return result
end

result = space_filler 'this is a string with many spaces '
puts "HEY:\n#{result}\n"
