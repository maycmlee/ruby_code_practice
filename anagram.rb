# Find out if the two words are anagrams of each other.

#Run time...O(2n)
def anagram(word_one, word_two)
  letters_hash = {}
  word_one = word_one.split("")
  word_two = word_two.split("")

  word_one.each do |letter|
    if letters_hash.has_key?(letter)
      letters_hash[letter] += 1
    else 
      letters_hash[letter] = 1
    end
  end

  word_two.each do |letter|
    if letters_hash.has_key?(letter)
      letters_hash[letter] -= 1
    end
  end

  letters_hash.each do |num, times|
    if times != 0 
      return false
    end
  end

    return true
end


puts anagram("tea", "eat")
puts anagram("see", "dear")
puts anagram("stop", "pots")