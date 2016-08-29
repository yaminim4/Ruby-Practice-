# Write a method that takes an integer `n` in; it should return
# n*(n-1)*(n-2)*...*2*1. Assume n >= 0.
# As a special case, `factorial(0) == 1`.
# Difficulty: easy.

def factorial(n)
    if n == 0
        return 1
    end
    result = 1
    while n > 0
    result = result * n
    n = n - 1
    end
    puts result
end
factorial(1)
factorial(2)
factorial(3)
factorial(4)
factorial(5)
