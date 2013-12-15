#!/usr/bin/ruby

puts 'Hello, world!'

# Implement an algorithm to determine if a string has all unique characters.
# make sure to ask if ASCII or unicode, if ASCII, if string length > 256, never going to be unique
# does capitalization matter? (if it did, you would use a downcase or upcase type method to normalize)

def unique_string string
    unique = true
    results = {}
    # step 1: convert string into array with each char as an element
    arr = string.split(//)
    # step 2: loop through chars and add to hash
    arr.each do |char|
        if results.has_key?(char)
            unique = false
            results[char] += 1
        else
            results[char] = 1
        end
    end
    
    return unique
end



string_1 = 'this is not unique'
string_2 = 'news'

unique = unique_string(string_1)
puts "String 1 unique? #{unique}\n"

unique = unique_string(string_2)
puts "String 2 unique? #{unique}\n"

# PART 2: What if you can't use additional data structures?    
# hard to answer this in a dynamic lang. b/c strings are separate data-types
# sort the string, check if neighbor has the char

def unique_string_via_sort string
    unique = true
    sorted_string = string.split(//).sort
    sorted_string.each_with_index do |char, idx|
        unique = false if idx > 0 && char == sorted_string[idx-1]        
    end
    
    return unique
end


string_1 = 'this is not unique'
string_2 = 'news'

unique = unique_string_via_sort(string_1)
puts "String 1 unique? #{unique}\n"

unique = unique_string_via_sort(string_2)
puts "String 2 unique? #{unique}\n"
