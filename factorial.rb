# Write a method that takes an integer `n` in; it should return
# n*(n-1)*(n-2)*...*2*1. Assume n >= 0.
#
# As a special case, `factorial(0) == 1`.
#
# Difficulty: easy.

# Iterative solution
def factorial(n)

  result = 1
  while n > 0
    result *= n
    n -= 1
  end
  return result

end

# Recursive solution

def recursive_factorial(n)
  if n == 0 
    return 1
  end

  return n * recursive_factorial(n-1)

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'factorial(0) == 1: ' + (factorial(0) == 1).to_s
)
puts(
  'factorial(1) == 1: ' + (factorial(1) == 1).to_s
)
puts(
  'factorial(2) == 2: ' + (factorial(2) == 2).to_s
)
puts(
  'factorial(3) == 6: ' + (factorial(3) == 6).to_s
)
puts(
  'factorial(4) == 24: ' + (factorial(4) == 24).to_s
)

puts(
  'recursive_factorial(0) == 1: ' + (recursive_factorial(0) == 1).to_s
)
puts(
  'recursive_factorial(1) == 1: ' + (recursive_factorial(1) == 1).to_s
)
puts(
  'recursive_factorial(2) == 2: ' + (recursive_factorial(2) == 2).to_s
)
puts(
  'recursive_factorial(3) == 6: ' + (recursive_factorial(3) == 6).to_s
)
puts(
  'recursive_factorial(4) == 24: ' + (recursive_factorial(4) == 24).to_s
)

