# March 2017
# Replace all occurrences of string AB with C without using 
# extra space
# Given a string str that may contain one more occurrences 
# of “AB”. Replace all occurrences of “AB” with “C” in str.

# Examples:

# Input  : str = "helloABworld"
# Output : str = "helloCworld"

# Input  : str = "fghABsdfABysu"
# Output : str = "fghCsdfCysu"

def replace_AB(string)

  p1 = 1
  p2 = 0
  changed = "no"
  count = 0
  i = 0
  newstring = ""

  while (p1 < string.length)
    # Check if "AB"
    if string[p2] == "A" && string[p1] == "B"
      newstring[i] = "C"
      p1 += 2
      p2 += 2
      i += 1
    end

    # Check if at end of string
    if p1 < string.length
      newstring[i] = string[p2]
    end

      p1 += 1
      p2 += 1
      i += 1
  end

puts "original: #{string} new: #{newstring}"
end

# replace_AB("helloABworld")
replace_AB("helloABworldAByou")
replace_AB("aABdeABk")
replace_AB("helloABworldAB")