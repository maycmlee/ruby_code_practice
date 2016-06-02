# Given an array that contains numbers from 1 to n-1
# and exactly 1 duplicate, find that duplicate.

def find_duplicate(array)
  array_sum = 0
  i = 0
  while i < array.length
    array_sum += array[i]
    i += 1
  end

  i = 0
  sum = 0
  n = array.length
  while i < n
    sum += i
    i += 1
  end

  duplicate = array_sum - sum

  return duplicate

end

answer = find_duplicate([2, 5, 1, 5, 4, 3])
puts answer

answer = find_duplicate([1, 2, 3, 4, 4, 5, 6, 7, 8])
puts answer