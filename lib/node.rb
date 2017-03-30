class Node
  attr_reader :value, :prev
  def initialize(value, **links)
    @value = value
    @prev = links[:prev]
  end
end
