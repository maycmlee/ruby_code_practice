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

    removed = @stack[@tail]
    @stack[@tail] = nil
    @tail -= 1
    @count -= 1
    return removed
  end

  def count()
    return @count
  end

  def output()
    i = 0
    while i < @count
      print "#{@stack[i]}"
      i += 1
    end
    puts ""
  end


end

s = Stack.new(5)
s.push(5)
puts "popped: #{s.pop}"

puts s.pop

# Reverse a stack and put reverse back into same stack. 
# Only use a stack and temp variable. 
# Something might be wrong with my stack class push/pop.

def tower_of_hanoi(stack1)
  puts "stack 1 START:" 
  puts "#{stack1.output}"

  i = 0
  stack2 = Stack.new(4)

  while i <= stack1.count
    temp = stack1.pop
    puts "stack1 count here: #{stack1.count}"
    puts "stack 1:" 
    puts "#{stack1.output}"

    while (stack1.count - i > 0)
      puts "stack 1:" 
      puts "#{stack1.output}"
      stack2.push(stack1.pop)
      puts "stack 2:" 
      puts "#{stack2.output}"
    end
puts "stack 1 before push temp:" 
    puts "#{stack1.output}"
    puts "temp: #{temp}"
    stack1.push(temp)
    
    puts "stack 1 after push temp:" 
    puts "#{stack1.output}"
    while (stack2.count != 0)
      stack1.push(stack2.pop)
      puts "stack 1:" 
      puts "#{stack1.output}"
    end

    i += 1
  end
  stack1.push(temp)
end

stack1 = Stack.new(4)
stack1.push(4)
stack1.push(5)
stack1.push(3)
stack1.push(2)


tower_of_hanoi(stack1)
