# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  
   i = 0
  string = ""
  num = num.to_s
  while i < num.length
    
    if num[i].to_i % 2 != 0 
      if i == 0 
        string = num[i]+ "-"
        
      elsif i == num.length - 1
        
        if num[i-1].to_i % 2 != 0 
          string = string + num[i]
        else
        string = string + "-" + num[i]        
        end
        
      elsif num[i-1].to_i % 2 != 0 
        string = string + num[i] + "-"
           
      else
        string = string + "-" + num[i] + "-"
      end
    
    else
    
      string = string + num[i]
     
    end
    
    i += 1
        
  end
  puts(string)
  return string
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
