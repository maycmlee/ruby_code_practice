# Given a sorted array of n integers that has been rotated
# an unknown number of times, write code to find an element
# in the array.  You may assume that the array was originally 
# sorted in increasing order.

def find_element(array, num)

  i = array.length / 2
  num_i = array[i]
  steps = num - num_i
  i = (i + steps) % array.length

  if array[i] == num
    return i
  else
    return "No element in array."
  end
 
end

answer = find_element([4, 5, 1, 2, 3], 4)
puts "Element found at index #{answer}"

answer = find_element([3, 4, 5, 1, 2], 1)
puts "Element found at index #{answer}"

answer = find_element([2, 3, 4, 5, 1], 1)
puts "Element found at index #{answer}"