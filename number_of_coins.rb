# Input amount of cents. 
# Output number of coins (quarters, dimes, nickles, pennies) 
# needed to make up the amount of cents.

def number_of_coins(cents)

# Hash table of coins' numerical values and their names
  coin_names = {25 => "Quarter(s)", 10 => "Dime(s)", 5 => "Nickle(s)", 1 => "Penny(ies)"}

# Array of coin numerical value only
  coins = [25, 10, 5, 1]

# Check that cents inputed is not a negative number
  if cents < 0 
    puts "Sorry, but you can't have #{cents} cents!"
    return
  end

  puts "#{cents} cents breaks down into: "

# Calculate the number of coins needed for each coin type
  i = 0
  while i < coins.length
    leftover = cents % coins[i]
    num_coins = (cents - leftover) / coins[i]
    cents = leftover
    puts "#{num_coins} " + coin_names.fetch(coins[i])
    i += 1
  end

end

number_of_coins(67)
puts ""
number_of_coins(-10)
puts ""
number_of_coins(0)