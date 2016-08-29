# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
# Difficulty: medium.

def third_greatest(nums)
    first = 0
    second = 0
    third = 0
    i = 0
    while i < nums.length
        if nums[i] > first
            third = second
            second = first
            first = nums[i]
        elsif nums[i] > second
            third = second
            second = nums[i]
        elsif nums[i] > third
            third = nums[i]
        end
        i += 1
    end
    puts third
end

third_greatest([2, 3, 7, 4])
