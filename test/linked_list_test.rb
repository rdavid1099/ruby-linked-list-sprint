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

    assert_nil list.first

    list.push(5)

    assert_equal list.first, 5
    assert_equal list.count, 1
  end

  def test_second_value_can_be_pushed_to_list
    list = LinkedList.new(5)
    list.push(6)

    assert_equal list.first, 5
    assert_equal list.last, 6
    assert_equal 2, list.count
  end

  def test_value_can_be_popped_from_end_of_list
    list = LinkedList.new(1)
    list.push(16)
    list.push(4)
    list.push(20)

    assert_equal 20, list.pop
    assert_equal 3, list.count
    assert_equal 4, list.pop
    assert_equal 2, list.count
    assert_equal 16, list.last
  end
end
