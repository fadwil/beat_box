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
  
  def prepend(data)
    node = Node.new(data)
    current_node = @head
   if @head.nil?
    @head = Node.new(data)
   else
    node.next_node = current_node
    @head = node
    end
    data
  end
  
  def find(position, elements)
    string = to_string.split
    found = string[position, elements] 
    found.join(" ")
  end
    # if position == 0
     
    # else
    #   current_node = @head
    #   node = current_node.next_node
    #   (position).times do 
    #     current_node = current_node.next_node
    #   end
    #   current_node = @head
    #   node = current_node.next_node
    #   (elements + 1).times do
    #     current_node = current_node.next_node
    #     current_node.next_node = node
    #     # node.elements
    #   end
    # end
  

  def insert(position, data)
    if position == 0 
      prepend(data)
    else
      node = Node.new(data)
      current_node = @head
      (position - 1).times do 
        current_node = current_node.next_node
      end
      node.next_node = current_node.next_node
      current_node.next_node = node
      node.data
    end
  end
  # insert will insert one or more elements at a given position in the list. It takes two parameters, the first one is the position at which to insert nodes, the second parameter is the string of data to be inserted.

  # insert needs the ability to iterate through the linked list, like iterating through an array. It needs to be able to find the position specified (the first of the two arguments) and then it needs to be able to place the data (the second of the two arguments) in that position specified. As nodes point to the next node, it will need the previous node to point to it, and it will need to point to the next node. It also needs to return the data passed in the argument.

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
end

# need a current node as a placeholder to traverse the linked list

