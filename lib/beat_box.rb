class BeatBox
  attr_reader :list, :data
  def initialize
    @list = LinkedList.new
    @data = data
  end

  def append(data)
    words = data.split
    words.each do |word|
    @list.append(word)
    end
  end

  def count
    @list.count
  end

  def play
    beats = @list.to_string
    `say -r 500 -v Alex #{beats}`
    beats
  end
end