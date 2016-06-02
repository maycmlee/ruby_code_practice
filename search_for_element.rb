# Search an element in an array where difference between
# adjacent elements is 1.
# example: array = [8, 7, 6, 7, 6, 5, 4, 3, 2, 3, 4, 3]
# Search for 3 and Output: Found at index 7

def search(array, num)
  i = 0
  while i < array.length
    if array[i] != num
      steps = (array[i] - num).abs
      i += steps
    else
      return i
    end
  end
    return "Element not found"
end

array = [8, 7, 6, 7, 6, 5, 4, 3, 2, 3, 4, 3]
answer = search(array, 3)
puts "The element is at index #{answer}"

array = [5, 6, 5, 4, 3, 2, 1, 2, 3, 2, 3, 4]
answer = search(array, 2)
puts "The element is at index #{answer}"