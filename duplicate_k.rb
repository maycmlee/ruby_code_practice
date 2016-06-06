# Given an unsorted array that may contain duplicates. 
# Also given a number k which is smaller than size of array. 
# Write a function that returns true if array contains 
# duplicates within k distance.

# Input: k = 3, arr[] = {1, 2, 3, 4, 1, 2, 3, 4}
# Output: false
# All duplicates are more than k distance away.

# Input: k = 3, arr[] = {1, 2, 3, 1, 4, 5}
# Output: true
# 1 is repeated at distance 3.

# Input: k = 3, arr[] = {1, 2, 3, 4, 5}
# Output: false

# Input: k = 3, arr[] = {1, 2, 3, 4, 4}
# Output: true

# Run time..O(3n)
def duplicate_k(array, k)
  i = 0
  while i < array.length
    check = 1
    while i + check < array.length && check <= k
      if array[i] == array[i + check]
        return true
      else
        check += 1
      end
    end
    i += 1
  end
  return false
end

puts duplicate_k([1, 2, 3, 4, 1, 2, 3, 4], 3)
puts duplicate_k([1, 2, 3, 1, 4, 5], 3)
puts duplicate_k([1, 2, 3, 4, 5], 3)
puts duplicate_k([1, 2, 3, 4, 4], 3)