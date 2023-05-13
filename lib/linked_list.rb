class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)  
    else
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
    data
  end
    
  def count
    current_node = @head
    count = 0
    if @head.nil?
      count
    else
      until current_node.next_node.nil?
        count += 1
        current_node = current_node.next_node
      end
      count += 1
    end
  end
  
  def to_string
    current_node = @head
    string = ""
    if head.nil?
      string
    else
      until current_node.next_node.nil?
        string << "#{current_node.data} "
        current_node = current_node.next_node
      end
    string << "#{current_node.data}"
    end
  end



# need a current node as a placeholder to traverse the linked list
end