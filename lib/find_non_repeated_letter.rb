# This method takes a string, str, and returns the first non-repeated letter in that string.
# More specifically, it looks for the first letter that appears by itself.
#
# + "ddcdd" has 'c' as its first non-repeated letter, and thus returns 'c'
# + "aabccd" has both 'b' and 'd' as non-repeating letters, but would return 'b' because that
#   one occurs first
# + "aabbaa" only has repeated letters (two pairs of 'a', and a pair of 'b'), and thus returns
#   nil (since there does not exist a non-repeated letter)




def find_first_non_repeated_letter(str)
find_first_non_repeated_letter = String.new

found = false
found_it = String.new
here_you_go = String.new

x = str.length - 2
y = 0
a = str[y]
b = str[y+1]
c = str[y+2]
found_it = nil

if a != b
  found_it = a
  find_first_non_repeated_letter = found_it
else

  while x > -2 && found == false

        a = str[y-1]
        b = str[y]
        c = str[y+1]
        found = false
        if a != b && b != c
          found_it = b
          found = true
          else
            y = y + 1
            x = x - 1
  end
find_first_non_repeated_letter = found_it
end
end
return find_first_non_repeated_letter
end
#  puts "Give me a string of letters"
#  puts " "
#  str = gets.chomp

# puts here_you_go = find_first_non_repeated_letter(str)