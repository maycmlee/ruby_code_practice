# Given two sorted arrays a and b, merge both arrays into a.
# Array a has an array size that is the sum of the number of
# elements of a and b.

def merge_arrays(a, b)

  x = a.length - 1
  y = b.length - 1
  z = a.length - 1

  # Find the last element in array a
  while (a[x] == nil)
    x -= 1
  end

  # Merge arrays
  while (x >= 0 || y >= 0)
    if x < 0 
      a[z] = b[y]
      y -= 1
    elsif y < 0
      a[z] = a[x]
      x -= 1
    elsif a[x] < b[y]
      a[z] = b[y]
      y -= 1
    else
    # if a[x] > b[y]
      a[z] = a[x]
      x -= 1
    end
      z -= 1
  end
end

a = [2, 3, 8, nil, nil]
b = [7, 9]
merge_arrays(a,b)
puts a