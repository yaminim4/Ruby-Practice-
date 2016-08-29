# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
# You may use the String `split` method to aid you in your quest.
# Difficulty: easy.

def longest_word(sentence)
    s = sentence.split(' ')
    longest = nil
    i = 0
    while i < s.length
        y = s[i]
        if longest == nil
           longest = y
        elsif y.length > longest.length
            longest = y
        end
        i += 1
    end
    return longest
end

word = "blue yellow"
longest_word(word) 
