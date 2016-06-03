# Write a method that takes in an integer `num` and returns the sum of
# all integers between zero and num, up to and including `num`.

# Iterative Method

def sum_nums_iterative(num)
  i = 0 
  sum = 0
  while i <= num
    sum += i
    i += 1
  end
  return sum
end

def sum_nums_recursive(num)
  if num == 0
    return num
  end
  return num + sum_nums_recursive(num - 1)
end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('sum_nums_iterative(1) == 1: ' + (sum_nums_iterative(1) == 1).to_s)
puts('sum_nums_iterative(2) == 3: ' + (sum_nums_iterative(2) == 3).to_s)
puts('sum_nums_iterative(3) == 6: ' + (sum_nums_iterative(3) == 6).to_s)
puts('sum_nums_iterative(4) == 10: ' + (sum_nums_iterative(4) == 10).to_s)
puts('sum_nums_iterative(5) == 15: ' + (sum_nums_iterative(5) == 15).to_s)

puts('sum_nums_recursive(1) == 1: ' + (sum_nums_recursive(1) == 1).to_s)
puts('sum_nums_recursive(2) == 3: ' + (sum_nums_recursive(2) == 3).to_s)
puts('sum_nums_recursive(3) == 6: ' + (sum_nums_recursive(3) == 6).to_s)
puts('sum_nums_recursive(4) == 10: ' + (sum_nums_recursive(4) == 10).to_s)
puts('sum_nums_recursive(5) == 15: ' + (sum_nums_recursive(5) == 15).to_s)
