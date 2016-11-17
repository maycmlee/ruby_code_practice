
# You have an array of integers, and for each index 
# you want to find the product of every integer except 
# the integer at that index.

# Write a function get_products_of_all_ints_except_at_index() 
# that takes an array of integers and returns an array of the 
# products.

# O(n2)
def product(array)
  products = []
  current = 0
  while (current < array.length)
    i = 0
    product = 1

    while (i < array.length)
      if i != current
        product *= array[i]
      end
      i += 1
    end

    products << product
    current += 1
  end

  products
end

# puts product([1,7,3,4])
# puts product([3,6,10,2])
puts product([1,7,0,4])


# O(n) time and O(n) space
def get_products_of_all_ints_except_at_index(array)
    before_prod = 1
    prod = []
    
    after_prod = 1
    after = []
    after[array.length - 1] = 1

    i = array.length - 1
    while (i > 0)

      # find products after
        after_prod *= array[i]
        after[i - 1] = after_prod

      i -= 1
    end

    i = 0
    while (i < array.length)

      # find products before
      prod[i] = after[i] * before_prod
      before_prod *= array[i]

      i += 1
    end 
end

puts get_products_of_all_ints_except_at_index([1,7,3,4])
# puts product([3,6,10,2])