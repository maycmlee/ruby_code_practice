# If we list all the natural numbers below 10 that are multiples 
# of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples 
# is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples_three_five()
  count = 0
  sum = 0
  while count < 1000
    if count % 3 == 0 || count % 5
      sum += count
    end
    count += 1
  end
  puts sum
end

multiples_three_five()