# Given an unsorted array with repetitions, the 
# task is to group multiple occurrence of individual 
# elements. The grouping should happen in a way that 
# the order of first occurrences of all elements is 
# maintained.

# Input: arr[] = {5, 3, 5, 1, 3, 3}
# Output: {5, 5, 3, 3, 3, 1}

# Input: arr[] = {4, 6, 9, 2, 3, 4, 9, 6, 10, 4}
# Output: {4, 4, 4, 6, 6, 9, 9, 2, 3, 10}

# Run time...O(2n + 1)?
def grouping(array)
  hash_map_of_nums = counting_number_of_times(array)
  grouped_array = []
  array.each do |element|
    while hash_map_of_nums[element] != 0
      hash_map_of_nums[element] -= 1
      grouped_array << element
    end
  end
  grouped_array
end

def counting_number_of_times(array)
  hash = {}
  array.each do |element|
    if hash.has_key?(element)
      hash[element] += 1
    else
      hash[element] = 1
    end
  end
  hash
end

puts grouping([5, 3, 5, 1, 3, 3])
puts grouping([4, 6, 9, 2, 3, 4, 9, 6, 10, 4])