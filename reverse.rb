# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.

puts ("Type in your String")
input_string = gets.chomp
puts input_string
new_string = ('')
idx_last_letter = input_string.length - 1
idx = idx_last_letter
while idx > 0
    new_string = new_string + input_string[idx]
    idx = idx + 1
    if idx == 1
        return new_string
    end
end
