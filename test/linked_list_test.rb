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

  def test_values_can_be_popped_and_pushed
    list = LinkedList.new
    list.push(1)

    assert_equal list.pop, 1
    assert_equal list.count, 0

    list.push(14)
    list.push(27)
    list.push(55)

    assert_equal list.count, 3
    assert_equal list.last, 55
    assert_equal list.pop, 55
    assert_equal list.count, 2
    list.pop
    list.pop
    assert_nil list.first
    assert_nil list.last
    assert_equal list.count, 0
  end

  def test_list_can_be_shifted
    list = LinkedList.new
    list.push(1)
    list.push(14)
    list.push(27)
    list.push(55)

    assert_equal list.shift, 1
    assert_equal list.count, 3
    assert_equal list.first, 14
    assert_equal list.shift, 14
    assert_equal list.first, 27
    assert_equal list.count, 2
    list.shift
    list.shift
    assert_equal list.count, 0
    assert_nil list.first
    assert_nil list.last
  end

  def test_list_can_be_unshifted
    list = LinkedList.new
    list.unshift(5)
    list.unshift(10)
    list.unshift(15)

    assert_equal list.pop, 5
    assert_equal list.first, 15
    assert_equal list.last, 10
  end

  def test_list_returns_value_at_index
    list = LinkedList.new(5)
    list.push(15)
    list.push(76)

    assert_equal list.val_at_index(1), 15
    assert_equal list.val_at_index(0), 5
    assert_nil list.val_at_index(78)
    assert_nil list.val_at_index(-34)
  end

  def test_list_can_pop_value_from_index
    list = LinkedList.new(5)
    list.push(15)
    list.push(76)
    list.push(81)
    list.push(902)

    assert_equal list.pop_at_index(2), 76
    assert_equal list.count, 4
    assert_equal list.pop_at_index(2), 81
    assert_equal list.count, 3
    assert_equal list.pop_at_index(2), 902
    assert_nil list.pop_at_index(2)
    assert_nil list.pop_at_index(-2)
    assert_equal list.count, 2
  end
end
