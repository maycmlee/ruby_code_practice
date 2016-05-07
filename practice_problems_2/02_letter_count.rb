def letter_count(str)

    letters = Hash.new(0)
    str_array = str.split(" ")
    
    str_array.each do |word|
        word.each_char do |char|
            #if letters.has_key?(char)
                letters[char] += 1
            #else
            #    letters[char] = 1
            #end
        end
    end
    
    letters
    
end
