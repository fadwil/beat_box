class LinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    end
    data
  end
end
  