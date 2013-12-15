#!/usr/bin/ruby

puts 'Hello, world!'

# Given two strings, write algorithm to determine if one is a permutation of the other

# need to check if all chars in string 1 == string 2
# one method involves O(n)2 -- two nested loops
# other option is sort both strings and see if they match?

string_1 = 'tag'
string_2 = 'gat'
string_3 = 'foo'

def string_compare string_1, string_2
    result = false # init to false
    a = string_1.split(//)
    b = string_2.split(//)
    # optimize by checking if they are even the same size:
    unless a.count == b.count
        result = string_1.split(//).sort == string_2.split(//).sort
    end
    
    return result
end

result = string_compare string_1, string_2
puts "HEY, match? #{result}\n"

result = string_compare string_1, string_3
puts "HEY, match? #{result}\n"

result = string_compare string_1, '23sss'
puts "HEY, match? #{result}\n"