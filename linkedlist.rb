class Node
  attr_accessor :data, :next_node
  def initialize(data, next_node)
    @data = data
    @next_node = next_node
  end

  def next
    @next_node
  end

end

class LinkedList
attr_accessor :head
  def initialize(data)
    @head = Node.new(data, nil)
  end

  def add(new_data)
    current = self.head
    while current.next_node != nil
      current = current.next_node
    end
    current.next_node = Node.new(new_data, nil)
  end

  def index_at(index)
    curr_node = self.head
    index.times do
      curr_node = curr_node.next
    end

    if curr_node
      curr_node.data
    else
      nil
    end
  end
end

ll = LinkedList.new("test0")
puts "At index 0: #{ll.index_at(0)}"
ll.add("test1")
puts "At index 1: #{ll.index_at(1)}"
ll.add("test2")
puts "At index 2: #{ll.index_at(2)}"
