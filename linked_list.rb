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
    index.times do
      current = current.next
    end
    return current
  end
  
  def remove(index)
    if @head.nil?
      puts "the storage is empty, nothing to remove"
    end
    
    if (index==0) 
      #remove the first element from the list
      current = @head 
      #get the element after the head and make head equal to it
      new_current = current.next
      @head = new_current
    end
    
    if (index>0)
      current= get(index) #(desired node to be removed)
      before_current = get(index-1) 
      after_current = current.next
      before_current.next = after_current
    end
      
  end
  
end



list = LinkedList.new

list.add(3)
list.add(5)
list.add(7)
list.add(9)

puts list.get(0)
puts list.get(1)
puts list.get(2)
puts list.get(3)

list.remove(0)

puts list.get(0)
puts list.get(1)
puts list.get(2)
puts list.get(3)


