# uses methods which call themselves to walk through nodes

require 'minitest/autorun'
require 'minitest/pride'
require'./linked_list'

class LinkedListTest < Minitest::Test

  def test_empty_list_can_append_node
    list = LinkedList.new
    list.append("data")
    assert_equal "data", list.head
  end

  def test_list_with_one_node_can_append_second_node
    list = LinkedList.new
    list.append("data1")
    list.append("data2")
    assert_equal "data2", list.tail
  end

  def test_list_with_two_nodes_can_append_third_node
    skip
    # change language
    list = LinkedList.new
    node = Node.new("data1")
    node2 = Node.new("data2")
    node3 = Node.new("data3")
    list.append(node)
    list.append(node2)
    list.append(node3)
    assert_equal node3, list.head.next_node.next_node
  end

  def test_empty_list_can_prepend_node
    skip
    list = LinkedList.new
    node = Node.new("data")
    list.prepend(node)
    assert_equal node, list.head
  end

  def test_list_with_one_node_can_prepend_second_node
    list = LinkedList.new
    list.prepend("data1")
    list.prepend("data2")
    assert_equal "data2", list.head
    assert_equal "data1", list.tail
  end

  def test_it_returns_true_if_supplied_value_is_in_list
    skip
    list = LinkedList.new
    node1 = Node.new("apple")
    node2 = Node.new("banana")
    node3 = Node.new("orange")
    node4 = Node.new("kiwi")
    assert list.include?("kiwi")
  end

  def test_it_returns_false_if_supplied_value_is_not_in_list
    skip
    list = LinkedList.new
    node1 = Node.new("apple")
    node2 = Node.new("banana")
    node3 = Node.new("orange")
    node4 = Node.new("pear")
    refute list.include?("kiwi")
  end

  def test_it_inserts_a_node_at_arbitrary_list_position_in_empty_list
    # how to account for numbers greater than list contents? append? add data in between??
    list = LinkedList.new
    list.insert(0, "data1")
    assert_equal "data1", list.head
  end

  def test_it_inserts_a_node_at_arbitrary_list_position
    # how to account for numbers greater than list contents? append? add data in between??
    list = LinkedList.new
    list.append("hello")
    list.append("yo")
    list.append("peanuts")
    list.insert(2, "data1")
    assert_equal "data1", list.find_by_index
    # go back to assignment to look at language for methods here
  end

  def test_it_pops_node_from_end_of_list
    skip
  end

  def test_it_returns_head_value_at_beginning_of_list
    skip
  end

  def test_it_returns_tail_value_at_end_of_list
    skip
  end

  def test_it_finds_the_value_at_a_numeric_position
    skip
  end

  def test_it_finds_position_of_first_occurence_of_a_value
    skip
  end

  def test_it_removes_the_value_at_specified_index
    skip
  end

  def test_it_removes_the_first_occurence_of_specified_value
    skip
  end

  def test_it_knows_if_the_list_is_empty
    skip
      list = LinkedList.new
      expected = true
      result = list.empty?
      assert_equal expected, result
  end

  def test_it_counts_number_of_nodes_in_list
    skip
    list = LinkedList.new
    expected = 0
    result = list.count
    assert_equal expected, result
  end

end
