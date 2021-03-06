class Queue_mine

  def initialize(size)
    @q = Array.new(size)
    @head = 0
    @tail = 0
    @count = 0
  end

  def dequeue()
    if @q[@head] == nil
      return "Queue is empty"
    else
      element = @q[@head]
      @q[@head] = nil
      @head = (@head + 1) % @q.length
      @count -= 1
    end
    return element
  end

  def enqueue(element)
    if @count >= @q.length
      return "Need to increase size"
    else
      @q[@tail] = element
      @tail = (@tail + 1) % @q.length
      @count += 1
    end
  end

end

q = Queue_mine.new(5)
q.enqueue("test1")
q.enqueue("test2")
q.enqueue("test3")
q.enqueue("test4")
q.enqueue("test5")
puts q.enqueue("test6")

puts q.dequeue
puts q.dequeue
puts q.dequeue
puts q.dequeue
puts q.dequeue
puts q.dequeue
