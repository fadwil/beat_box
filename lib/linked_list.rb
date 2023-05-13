class LinkedList
  attr_reader :count
  attr_accessor :head
  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)  
    else
      @head.next_node = Node.new(data)
    end
    @count += 1
    data
  end

end