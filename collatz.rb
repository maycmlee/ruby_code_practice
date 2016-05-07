# The following iterative sequence is defined for the set of positive integers:

# Given a number n in the Collatz sequence,
# if n is even, the next number in the sequence is n/2
# if n is odd, the next number in the sequence is 3n + 1

# Applying the rule above with the starting number 13, we generate the following sequence:

# 13 40 20 10 5 16 8 4 2 1 It can be seen that this sequence (starting at 13 and 
# finishing at 1) contains 10 terms. Although it has not been proved yet 
# (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

class Collatz

  def initialize(starting_num)
    @starting_num = starting_num
  end

  def length
    sequence(@starting_num).length
  end

  def self.longest_chain

    longest_sequence_length = 0
    longest_sequence_num = 0

    n = 1000000
    while n > 1
      collatz = Collatz.new(n)
      if collatz.length > longest_sequence_length
        longest_sequence_length = collatz.length
        longest_sequence_num = n
      end
      n -= 1
    end
    puts longest_sequence_num
    puts longest_sequence_length
  end

  private

  def even_num(n)
    n/2
  end

  def odd_num(n)
    3 * n +1
  end

  def sequence(starting_num)
    n = starting_num
    collatz = [starting_num]
    while n > 1
      if n % 2 == 0
        n = even_num(n)
        collatz << n
      else
        n = odd_num(n)
        collatz << n
      end
    end
    collatz
  end
end

Collatz.longest_chain
