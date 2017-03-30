require './lib/node'

class LinkedList
  attr_reader :init_node

  def initialize(init_value = nil)
    @init_node = Node.new(init_value) if init_value
  end

  def unshift(value)
    init_node.nil? ? set_init_node(value) : new_init_value(value)
  end

  def shift
    value = init_node.value
    reset_init_value
    value
  end

  def push(value)
    init_node.nil? ? set_init_node(value) : set_last_node(value)
  end

  def pop
    value = get_last_node.value
    disconnect_last_node
    value
  end

  def pop_at_index(index)
    return nil if init_node.nil? || index < 0 || index > count
    desired_node = get_node_at(index)
    desired_node.prev.nil? ? (@init_node = nil) : (desired_node.prev.next = desired_node.next)
    desired_node.value
  end

  def first
    init_node.nil? ? nil : init_node.value
  end

  def last
    init_node.nil? ? nil : get_last_node.value
  end

  def val_at_index(index, counter = 0, node = init_node)
    return nil if node.nil? || index < 0 || index > count
    return node.value if index == counter
    val_at_index(index, counter += 1, node.next)
  end

  def count(counter = 0, node = init_node)
    return 0 if node.nil?
    counter += 1
    return counter if node.next.nil?
    count(counter, node.next)
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
      last_node.prev.nil? ? (@init_node = nil) : (last_node.prev.next = nil)
      last_node.clear!
    end

    def reset_init_value
      old_init = init_node
      @init_node = old_init.next
      old_init.clear!
    end

    def new_init_value(value)
      new_init = Node.new(value, next: init_node)
      init_node.prev = new_init
      @init_node = new_init
    end

    def get_node_at(index, counter = 0, node = init_node)
      return node if index == counter
      get_node_at(index, counter += 1, node.next)
    end
end
