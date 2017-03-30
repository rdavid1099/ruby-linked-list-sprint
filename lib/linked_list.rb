require './lib/node'

class LinkedList
  attr_reader :init_node

  def initialize(init_value = nil)
    @init_node = Node.new(init_value) if init_value
  end

  def first
    init_node.nil? ? nil : init_node.value
  end

  def last
    get_last_node.value
  end

  def count(counter = 0, node = init_node)
    return 0 if node.nil?
    counter += 1
    return counter if node.next.nil?
    count(counter, node.next)
  end

  def push(value)
    init_node.nil? ? set_init_node(value) : set_last_node(value)
  end

  def pop
    value = get_last_node.value
    disconnect_last_node
    value
  end

  private
    def set_init_node(value)
      @init_node = Node.new(value)
    end

    def set_last_node(value)
      last_node = get_last_node
      node = Node.new(value, prev: last_node)
      last_node.next = node
    end

    def get_last_node(node = init_node)
      return node if node.next.nil?
      get_last_node(node.next)
    end

    def disconnect_last_node
      last_node = get_last_node
      new_last_node = last_node.prev.nil? @init_node
      if new_last_node.nil?
        @init_node = nil
      new_last_node.next = nil unless new_last_node.nil?
      last_node.clear!
    end
end
