def no_repeats(year_start, year_end)
    
    years_array = (year_start..year_end).to_a
    no_repeats = []

    years_array.each do |year|

        if no_repeat?(year)
            no_repeats << year 
        end
    end
    
    no_repeats
        
end


def no_repeat?(year)
    

    
    year.to_s.each_char do |char|

    i = 0

       while i < year.to_s.length
            i += 1
            if char == year.to_s[i + year.to_s.index(char)]
                return false
            end
        end
    end
    
    return true

end


