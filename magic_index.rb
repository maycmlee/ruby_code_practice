# A magic index in an array A[0...n-1] is defined to be an
# index such that A[i]=i. Given a sorted array of distinct 
# integers, write a method to find a magic index if one exists
# in an array A.

# Using binary search method. 
# Run time...O(logn)
def magic_index(array)
  
  low = 0 
  high = array.length - 1
  mid = (high - low)/2

  while (low <= mid && high != low)
    if array[mid] > mid
      high = mid
      mid = (high - low)/2
    else array[mid] == mid
      return mid
    end
  end
 return "No magic index found."
end

array = [0, 1, 2, 3, 5, 6]
answer = magic_index(array)
puts answer

array = [1, 2, 3, 4]
answer = magic_index(array)
puts answer

array = [0, 2, 3, 4]
answer = magic_index(array)
puts answer

array = [0, 1, 2, 3, 4, 5]
answer = magic_index(array)
puts answer

answer = magic_index([-3, -1, 1, 2, 4])
puts answer