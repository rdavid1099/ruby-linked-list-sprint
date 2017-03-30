require './test/test_helper'

class LinkedListTest < TestHelper
  def test_linked_list_can_be_initialized_empty
    empty_list = LinkedList.new

    assert_equal empty_list.count, 0
  end

  def test_linked_list_can_be_initialized_with_a_value
    list = LinkedList.new(5)

    assert_equal list.first, 5
  end

  def test_value_can_be_added_to_empty_list
    list = LinkedList.new

    assert_equal list.first, nil

    list.push(5)

    assert_equal list.first, 5
    assert_equal list.count, 1
  end
end
