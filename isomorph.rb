# Check if two given strings are isomorphic to each other.
# Input: str1 = "aab"
# Output: str2 = "xxy"

def isomorph?(string_one, string_two)
  i = 0
  j = 0
  maps_letters = {}
  while (i < string_one.length) && (j < string_two.length)  
    if maps_letters.has_key?(string_one[i]) 
      puts i
      if maps_letters[string_one[i]] == string_two[j]
        i += 1
        j += 1
      else
        return false
      end
    else
      maps_letters[string_one[i]] = string_two[j]
      i += 1
      j += 1
    end
  end
  puts maps_letters
  return true
end

puts isomorph?("aab", "xxy")
puts isomorph?("aab", "xyz")