require './test/test_helper'

class NodeTest < TestHelper
  def test_it_can_save_a_value
    node = Node.new(5)

    assert_equal node.value, 5
  end
end
