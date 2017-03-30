class Node
  attr_reader :value
  attr_accessor :next, :prev
  def initialize(value, **links)
    @value = value
    @prev = links[:prev]
    @next = links[:next]
  end

  def clear!
    @value = nil
    @prev = nil
    @next = nil
  end
end
