# Insert method doesn't work. previous node's next
# is not pointing to new node.

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
    @data = data
  end

  def head
    Node.new(@data, nil)
  end

  def insert(new_data)
    new_node = Node.new(new_data, nil)
    head.next_node = new_node
  end

  def index_at(index)
    curr_node = head
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

ll = LinkedList.new("test")
puts ll.index_at(0)
ll.insert("test2")
puts ll.index_at(1)