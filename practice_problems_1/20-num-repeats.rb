# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
      repeats = [] 
  string_idx = 0
  
  while string_idx < string.length
    letter = string[string_idx]
    
    repeats_idx = 0
    while repeats_idx < repeats.length     
      if repeats[repeats_idx][0] == letter
        repeats[repeats_idx][1] += 1     
        break
      end
      repeats_idx += 1
    end
    
    if repeats_idx == repeats.length
      repeats.push([letter, 1])
    end
    
    string_idx += 1
  end
  
  num_repeats = 0
  counter = 0
  while counter < repeats.length
    if repeats[counter][1] > 1
      num_repeats += 1
    end
   
    counter += 1
  end    
  
  return num_repeats
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
