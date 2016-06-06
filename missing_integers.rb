# Given an array of integers print the missing elements that 
# lie in range 0-99. If there are more than one missing, collate 
# them, otherwise just print the number.

# Note that the input array may not be sorted and may contain 
# numbers outside the range [0-99], but only this range is to 
# be considered for printing missing elements.

# Expected time complexity O(n), where n is the size of the 
# input array.

#1 - Input: {88, 105, 3, 2, 200, 0, 10}

# Output: 
# 1
# 4-9
# 11-87
# 89-99

#2 - Input: {9, 6, 900, 850, 5, 90, 100, 99}
# Output: 
# 0-4
# 7-8
# 10-89
# 91-98

#Run time..O(nlogn + n)..needs to be refactored
def print_missing_integers(array)

  i = 0
  count = 0
  while count < 100
    if count == 0 && array[i] > 0
      puts "#{count} - #{array[i] - 1}"
        count = array[i + 1] + 1
        i += 1
    elsif array[i + 1] - array[i] > 2
      if array[i + 1] < 100
        puts "#{array[i] + 1} - #{array[i + 1] - 1}"
        count = array[i + 1] + 1
        i += 1
      else
        puts "#{array[i] + 1} - 99"
        count = 100
      end
    elsif array[i + 1] - array[i] == 2
      puts count
      count = array[i + 1] + 1
      i += 1
    else
      count = array[i] + 1
      i += 1
    end
  end
end

array = [0 ,2, 3, 10, 88, 105, 200]
print_missing_integers(array)
puts ""
array = [5 ,6, 9, 90, 99, 100, 850, 900]
print_missing_integers(array)