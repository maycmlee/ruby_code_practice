# March 2017

class Stack

  def initialize(size)
    @stack = Array.new(size)
    @tail = 0
    @count = 0
  end

  def push(element)
    if @count > @stack.length
      return "Stack is full. Increase size."
    end

    @stack[@tail] = element

    if @count < @stack.length - 1
      @tail += 1
    end
    @count += 1
  end

  def pop()
    if @count == 0
      return "Stack is empty. Nothing to pop."
    end

    @tail -= 1
    removed = @stack[@tail]
    @stack[@tail] = nil
    @count -= 1
    return removed
  end

end

s = Stack.new(5)
s.push(5)
puts "popped: #{s.pop}"

puts s.pop