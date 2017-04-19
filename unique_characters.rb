# does a string have all unique characters?

def unique_characters(string)
  i = 0
  hash_of_chars = Hash.new()

  while i < string.length

    if hash_of_chars.include?(string[i])
      return "Characters are NOT unique!"
    else
      hash_of_chars[string[i]] = 0
    end

    i += 1
  end

  return "All unique characters!"

end

puts unique_characters("abchea")