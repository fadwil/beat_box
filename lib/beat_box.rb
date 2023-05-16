class BeatBox
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    words = data.split
    words.each do |word|
    @list.append(word)
    end
    data
  end

  def count
    @list.count
  end

  def play
    beats = @list.to_string
    `say -r 300 -v Boing #{beats}`
  end
end