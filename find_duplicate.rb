# Given an array that contains numbers from 1 to n-1
# and exactly 1 duplicate, find that duplicate.

# Run time...O(n*(n+1)/2)
def find_duplicate_one(array)
  i = 0
  while i < array.length
    j = i + 1

    while j < array.length
      if array[i] == array[j]
        return array[i]
      end
      j += 1
    end
    i += 1
  end
end

# Run time..O(n)
def find_duplicate_two(array)
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

# Sort-in-place solution.
# Run time...O(n)
def find_duplicate_three(array)
  count = 0
  i = array.length - 1
  while count < array.length
    if array[i] != i
      temp = array[i]
      i = temp
      count += 1
    else
      i -= 1
      count += 1
    end
  end
  return temp
end

answer = find_duplicate_three([2, 5, 1, 5, 4, 3])
puts answer

answer = find_duplicate_three([1, 2, 3, 4, 4, 5, 6, 7, 8])
puts answer