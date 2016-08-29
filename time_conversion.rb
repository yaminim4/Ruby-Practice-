# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

def time_conversion(minutes)
    hours = minutes/60
    min = minutes - (hours * 60)
    if min == 0
        min = '00'
    end
    if min > 0 && min < 10
    min = "0" + min.to_s
    end
    puts " #{hours}:#{min}"
end

puts time_conversion(125)
