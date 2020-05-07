class Node
  attr_accessor :next
  attr_reader   :value
  
  def initialize(value, next_node=nil)
    @value = value
    @next_node  = next_node
  end
  
  def to_s
    "The number located at this position is: #{@value}"
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
  
  def get(index)
    current=@head
    index.size do
      current=current.next_node
    end
    return current
  end
  
end



list = LinkedList.new

list.add(3)
list.add(5)

puts list.get(1)