### Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.

puts "enter string"
s = gets.chomp

def count_vowels(s)
    r = []
    s.scan(/[aeiou]/) {|letter| r << letter }
    puts r.length
end

count_vowels(s)
