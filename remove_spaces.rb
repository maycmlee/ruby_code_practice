# Remove spaces from a given string in O(n)
# running time and only one traversal of a string
# Input: "I love ice cream"
# Output: "Iloveicecream"

def remove_spaces(string)
  i = 0
  while (string[i] != " ")
    i += 1
  end

  j = i + 1
  while j < string.length
    if string[j] != " " && string[i] == " "
      string[i] = string[j]
      string[j] = " "
      i += 1
      j += 1
    elsif string[j] == " " && string[i] == " "
      j += 1
    else
      i += 1
      j += 1
    end
  end
    return string
end

string_one = "i love ice cream"
puts "Input: #{string_one}"
string_one_output = remove_spaces(string_one)
puts "Output: #{string_one_output}"
string_two = "ice cream soda"
puts "Input: #{string_two}"
string_two_output = remove_spaces(string_two)
puts "Output: #{string_two_output}"
