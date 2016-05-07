def word_unscrambler(str, words)
    
    anagrams = []
    
    words.each do |word|
        if word.split("").sort == str.split("").sort
            anagrams << word
        end
        
    end
    
    anagrams

end
