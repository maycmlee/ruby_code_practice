# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.

def palindrome?(string)
    
     begin_index = 0
  end_index = string.length - 1
  
  if string.length == 1
    return true
  end
  
  while begin_index < end_index || begin_index != end_index
    if string[begin_index] == string[end_index]
      begin_index += 1
      end_index -= 1
      palindrome = true
    else
      begin_index = end_index
      palindrome = false
    end
  end
  return palindrome
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)
