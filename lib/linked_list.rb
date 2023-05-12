class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      data.next_node = @head
      @head = data
    end
    data
  end
end