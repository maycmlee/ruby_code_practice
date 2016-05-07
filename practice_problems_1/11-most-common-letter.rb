# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  
    idx1 = 0
  most_com_counter = 1
 
  
  while idx1 < string.length
  
    idx2 = idx1 + 1   
    counter = 1
    while idx2 < string.length
      
      if string[idx1] == string [idx2]    
        counter += 1   
      end
    
      idx2 += 1 
    end
    
    if most_com_counter < counter
      most_com_counter = counter
      most_common = string[idx1]
    end

    idx1 += 1
  end
  
  return [most_common, most_com_counter]
      
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
