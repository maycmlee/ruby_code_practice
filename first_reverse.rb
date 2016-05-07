# Take the str parameter being passed and return 
# the string in reversed order. 

def first_reverse(str)
  x = str.split(" ").map do |word|
    reverse_word(word)
  end.reverse.join(" ")
  puts x
end

def reverse_word(word)
  reversed = ""
  i = word.length - 1
  while i >= 0
    reversed = reversed + word[i]
    i -= 1
  end
  return reversed
end

# Simplest solution
# def first_reverse(str)
#   x = str.split(" ").map do |word|
#     word.reverse
#   end.reverse.join(" ")
#   puts x
# end


first_reverse("hello world")