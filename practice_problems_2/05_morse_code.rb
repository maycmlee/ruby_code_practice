MORSE_MAP = {
        "a" => ".-",
        "b" => "-...",
        "c" => "-.-.",
        "d" => "-..",
        "e" => ".",
        "f" => "..-.",
        "g" => "--.",
        "h" => "....",
        "i" => "..",
        "j" => ".---",
        "k" => "-.-",
        "l" => ".-..",
        "m" => "--",
        "n" => "-.",
        "o" => "---",
        "p" => ".--.",
        "q" => "--.-",
        "r" => ".-.",
        "s" => "...",
        "t" => "-",
        "u" => "..-",
        "v" => "...-",
        "w" => ".--",
        "x" => "-..-",
        "y" => "-.--",
        "z" => "--.."
    }
 

def morse_encode(str)
    str_array = str.split(" ")
    morse_string = []
    
    str_array.each do |word|
        morse_string << morse_encode_word(word)
    end
    
    morse_string.join("  ")
        
    
 
end

def morse_encode_word(word)

    morse_word = []
    
    word.each_char do |char|
        morse_word << MORSE_MAP.fetch(char)
    end
    
    morse_word.join(" ")

end
