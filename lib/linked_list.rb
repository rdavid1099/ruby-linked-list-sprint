require './lib/node'

class LinkedList
  attr_reader :init_node

  def initialize(init_value = nil)
    @init_node = Node.new(init_value) if init_value
  end

  def first
    init_node.value
  end

  def count
    0
  end
end
