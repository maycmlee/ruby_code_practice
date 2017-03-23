# Find the element that appears once in a sorted array 
# where all other elements appear twice one after another. 
# Find that element in O(logn) complexity.

# Used recursion

def lonely_integer(array, low = 0, high = array.length - 1)

if array.length == 0
  puts "Empty arrray"
  return
end

  # Find middle of array
  midpt = (low + high) / 2

  # Check if midpt is odd or even
  odd_or_even = odd_or_even(midpt)
  
  # If # matches to right
  if array[midpt] == array[midpt + 1] && midpt != array.length - 1
    if odd_or_even == "even"
      low = midpt
      # puts "here 1"
      lonely_integer(array, low, high)
      return
    else
      high = midpt
      # puts "here 2"
      lonely_integer(array, low, high)
      return
    end

  # If # matches to left
  elsif array[midpt] == array[midpt - 1] 
    if odd_or_even == "even"
      high = midpt
      # puts "here 3"
      lonely_integer(array, low, high)
      return
    elsif odd_or_even == "odd" && midpt != array.length - 2
      low = midpt
      # puts "here 4"
      lonely_integer(array, low, high)
      return
    else
      # puts "here 5"
      midpt = high
      return puts "Lonely integer: #{array[midpt]}"
    end
  else
    # puts "here i am"
    puts "Lonely integer: #{array[midpt]}"
  end
end


def odd_or_even(num)
  if num % 2 == 0
    return "even"
  else 
    return "odd"
  end
end


lonely_integer([1,4,4,5,5])
lonely_integer([0,0,3,5,5])
lonely_integer([1,1,3,3,5])
lonely_integer([5,5,11,11,33,33,55])
lonely_integer([22, 22, 33, 44,44, 55,55])
lonely_integer([])