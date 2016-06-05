# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.

# Run time...O(n/2)
def palindrome?(string)
  x = 0
  y = string.length - 1

  while x <= y

    if string[x] != string[y]
      return false
    else
      x += 1
      y -= 1
    end
  end
  return true
end

# Recursive Solution
# Run time...O(n/2)
def recursive_palindrome(string, left = nil, right = nil)
  if left == nil && right == nil
    left = 0
    right = string.length - 1
  end

  if left > right
    return true
  end
  
  if string[left] == string[right]
    recursive_palindrome(string, left + 1, right - 1)
  else
    return false
  end
end




# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)

puts('recursive_palindrome("abc") == false: ' + (recursive_palindrome('abc') == false).to_s)
puts('recursive_palindrome("abcba") == true: ' + (recursive_palindrome('abcba') == true).to_s)
puts('recursive_palindrome("z") == true: ' + (recursive_palindrome('z') == true).to_s)
