# Group words with same set of characters
# Given a list of words with lower cases. Implement a function to find all Words that have the same unique character set .

# Example:

# Input: words[] = { "may", "student", "students", "dog",
#                  "studentssess", "god", "cat", "act",
#                  "tab", "bat", "flow", "wolf", "lambs",
#                  "amy", "yam", "balms", "looped", 
#                  "poodle"};
# Output : 
# looped, poodle, 
# lambs, balms, 
# flow, wolf, 
# tab, bat, 
# may, amy, yam, 
# student, students, studentssess, 
# dog, god, 
# cat, act, 

# All words with same set of characters are printed 
# together in a line.

def same_set_characters(array_of_words)

  index1 = 0

  while (index1 < array_of_words.length)

    if array_of_words[index1] != nil
      puts ""
      print "#{array_of_words[index1]},"
      index2 = index1 + 1
      while (index2 < array_of_words.length)
        if array_of_words[index2] != nil
          if array_of_words[index1].length < array_of_words[index2].length
            letters_hash = string_into_hash(array_of_words[index2])
            shorter_word = array_of_words[index1]
            index_short = index1
          else
            letters_hash = string_into_hash(array_of_words[index1])
            shorter_word = array_of_words[index2]
            index_short = index2
          end

          matches = check_letters(shorter_word, letters_hash)

          if matches == "yes"
              print " #{array_of_words[index2]},"
              array_of_words[index2] = nil
          end

        end

        index2 += 1
      end
    end

    index1 += 1
  end
end


# Checks whether the letters of the word matches the letters 
# in hash.

def check_letters(word, letters_hash)

  result = "yes"

for i in 0..word.length - 1
  # while i < word.length

    if letters_hash.has_key?(word[i])
    
      if letters_hash[word[i]] == 0
        result = "no"
        i = word.length
    
      else
        letters_hash[word[i]] -= 1
      end
    
    else
      result = "no"
      i = word.length
    end

  end

  return result
end

letters = { "t" => 2, "e" => 1, "s" => 1, "a" => 1 }
check_letters("test", letters)

def string_into_hash(word)
  i = 0
  word_hash = Hash.new
  while i < word.length
    if word_hash.has_key?(word[i])
      word_hash[word[i]] += 1
    else
    word_hash[word[i]] = 1
    end
    i += 1
  end
  return word_hash
end

# string_into_hash("test")
same_set_characters(["may", "student", "students", "dog","studentssess", "god", "cat", "act", "tab", "bat", "flow", "wolf", "lambs", "amy", "yam", "balms", "looped", "poodle"])
