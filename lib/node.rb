class Node
  attr_reader :value
  attr_accessor :next, :prev
  def initialize(value, **links)
    @value = value
    @prev = links[:prev]
    @next = links[:next]
  end
end
