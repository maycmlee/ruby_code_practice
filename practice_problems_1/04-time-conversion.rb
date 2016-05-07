# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

def time_conversion(minutes)
    
     if minutes < 60
    hours = 0
    minutes_left = minutes
  else
    hours = minutes / 60
    minutes_left = minutes % 60
  end
  
  if minutes_left < 10
    minutes_s = "0" + minutes_left.to_s
  else
    minutes_s = minutes_left.to_s
  end
  
 return hours.to_s + ":" + minutes_s
 
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
