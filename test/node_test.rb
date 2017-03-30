require './test/test_helper'

class NodeTest < TestHelper
  def test_it_can_save_a_value
    node = Node.new(5)

    assert_equal node.value, 5
  end

  def test_it_can_be_linked_to_past_node
    prev_node = Node.new(5)
    node = Node.new(6, prev: prev_node)

    assert_equal node.prev.value, 5
    assert_equal node.value, 6
  end
end
