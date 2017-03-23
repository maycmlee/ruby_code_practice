# March 2017
# Given two unsorted arrays of distinct elements, 
# the task is to find all pairs from both arrays whose sum is equal to x.

# Examples:
# Input :  arr1[] = {-1, -2, 4, -6, 5, 7}
#          arr2[] = {6, 3, 4, 0}  
#          x = 8
# Output : 4 4
#          5 3

# Input : arr1[] = {1, 2, 4, 5, 7} 
#         arr2[] = {5, 6, 3, 4, 8}  
#         x = 9
# Output : 1 8
#          4 5
#          5 4

# Brute force method O(n^2)

def find_pairs_brute(array1, array2, num)
  
  i = 0
  while (i < array1.length)
    j = 0

    while (j < array2.length)
      if array1[i] + array2[j] == num
        puts "#{array1[i]} #{array2[j]}"
      end
      j += 1
    end

    i += 1
  end
end

find_pairs_brute([-1, -2, 4, -6, 5, 7],[6, 3, 4, 0], 8)
find_pairs_brute([1, 2, 4, 5, 7], [5, 6, 3, 4, 8], 9)

# Soln O(n)
def find_pairs_hash(array1, array2, num)


end
