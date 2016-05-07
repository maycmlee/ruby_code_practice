# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.

def count_vowels(string)
    
      vowel_counter = 0
  index = 0
 
  while index < string.length
    if string[index] == "a"
      vowel_counter += 1
    elsif string[index] == "e"
      vowel_counter += 1
    elsif string[index] == "i"
      vowel_counter += 1
    elsif string[index] == "o"
      vowel_counter += 1
    elsif string[index] == "u"
      vowel_counter += 1
    end

    index += 1
  end
  
  return vowel_counter

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
