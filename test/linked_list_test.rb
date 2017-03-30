require './test/test_helper'

class LinkedListTest < TestHelper
  def test_linked_list_can_be_initialized_empty
    empty_list = LinkedList.new

    assert_equal empty_list.count, 0
  end
end
