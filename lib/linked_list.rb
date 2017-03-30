require './lib/node'

class LinkedList
  attr_reader :init_node

  def initialize(init_value = nil)
    @init_node = Node.new(init_value) if init_value
  end

  def first
    init_node.nil? ? nil : init_node.value
  end

  def count()
    counter = 0
    return counter if init_node.nil?
  end

  def push(value)
    init_node.nil? ? set_init_node(value) : nil
  end

  private
    def set_init_node(value)
      @init_node = Node.new(value)
    end
end
