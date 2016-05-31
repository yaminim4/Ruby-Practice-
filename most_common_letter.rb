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
