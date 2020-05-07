class Node
  attr_accessor :next
  attr_reader   :value
  
  def initialize(value, next_node=nil)
    @value = value
    @next_node  = next_node
  end
  
  def to_s
    "Node with value: #{@value}"
  end
end

class LinkedList
  def initialize
    @head = nil
  end
  def add(number)
    if @head
      find_tail.next = Node.new(number)
    else
      @head = Node.new(number)
    end
  end
  def find_tail
    node = @head
    return node if !node.next
    return node if !node.next while (node = node.next)
  end
  
  def print
    node = @head
    puts node
    while (node = node.next)
      puts node
    end
  end
end



list = LinkedList.new

list.add(10)
list.add(20)
list.add(30)

list.print