# Write method tor eplace all spaces with "%20"
# Assumes string has extra alloted spaces at the end

def replace_spaces(string)
  head = string.length - 1
  tail = string.length - 1
  
  # Find last letter
  while (string[head] == " ")
    head -= 1
  end

  while head > 0
    if string[head] != " "
      string[tail] = string[head]
    else
      string[tail] = "0"
      tail -= 1
      string[tail] = "2"
      tail -= 1
      string[tail] = "%"
    end
    tail -= 1
    head -= 1
  end
  puts string
end

replace_spaces("I am that    ")