# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.

def mcl(string)
    s = string.split
    #iterate through each letter in the array
    # compare that letter to every other letter
    # if the letter matches, count should become count + 1
    # the last count should be compared to largest = 0
    # if the last count of the next letter is larger than the current largest, it
    # becomes the largest
    i = 0
    t = 0
    count = 0
    #actual_count = count - 1 because letter matches to iself once. 
    largest_count = 0
    mcletter = nil
    while i < s.length
        x = s[i]
        while t < s.length
            y = s[t]
            if x == y
                count += 1
            end
            t += 1
        if count > largest_count
            largest_count = count
            mcletter == x
        end
        i += 1
        end
    end
    return largest_count
    puts mcletter
end

trial1 = "abca"

mcl(trial1)

#================================version2==================================
def mcl(string)
    array_of_string = string.split('') #check output of this

    idx_array = 0
    count_of_letter = 0
    largest_count = 0
    idx_comparison = 0

    while idx_array < array_of_string.length     # taking each letter, one by one..(the "constant letter")
        letter = array_of_string[idx_array]

        while idx_comparison < array_of_string.length  #for a given letter, comparing it with the other letters in the array.
            letter_of_comparison = array_of_string[idx_comparison] #the other letters in the array
            if letter == letter_of_comparison #if the "constant letter matches the letter it is compared to... "
                count_of_letter += 1 #count goes up by 1
            end
            idx_comparison += 1 #the constant letter is compared to the next letter of the array.
        end
        return count_of_letter #after constant letter is compared to all the letters in the array. the count is now
                               # the count of the constant letter.
        if count_of_letter > largest_count  #the count takes the honor of "largest", if it is > than the present largest.
            largest_count = count_of_letter #here, need to make provisions for more than one letter with the same frequency.
        end
        idx_array += 1 #we repeat the above steps on the next "constant letter" of the array
    end
    puts [count_of_letter, largest_count]
end

trial1 = "abca"

mcl trial1 
