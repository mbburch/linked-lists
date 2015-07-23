require 'minitest/autorun'
require 'minitest/pride'
require'./linked_list'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_empty_list_can_append_node
    list = LinkedList.new
    list.append("gum")
    assert_equal "gum", list.head
    assert_equal 1, list.count
  end

  def test_list_with_one_node_can_append_second_node
    list = LinkedList.new
    list.append("popcorn")
    list.append("peanuts")
    assert_equal "peanuts", list.tail
    assert_equal 2, list.count
  end

  def test_list_with_two_nodes_can_append_third_node
    list = LinkedList.new
    list.append("popcorn")
    list.append("peanuts")
    list.append("nachos")
    assert_equal "popcorn", list.head
    assert_equal "nachos", list.tail
  end

  def test_returns_error_when_user_appends_empty_node
    skip
  end

  def test_empty_list_can_prepend_node
    list = LinkedList.new
    list.prepend("gum")
    assert_equal "gum", list.head
    assert_equal 1, list.count
  end

  def test_list_with_one_node_can_prepend_second_node
    list = LinkedList.new
    list.prepend("popcorn")
    list.prepend("peanuts")
    assert_equal "peanuts", list.head
    assert_equal "popcorn", list.tail
    assert_equal 2, list.count
  end

  def test_list_with_two_nodes_can_prepend_third_node
    list = LinkedList.new
    list.prepend("popcorn")
    list.prepend("peanuts")
    list.prepend("nachos")
    assert_equal "nachos", list.head
    assert_equal "popcorn", list.tail
    assert_equal 3, list.count
  end

  def test_returns_error_when_user_prepends_empty_node
    skip
  end

  def test_it_inserts_a_node_at_given_index_in_empty_list
    list = LinkedList.new
    list.insert(0, "popcorn")
    assert_equal "popcorn", list.head
  end

  def test_it_inserts_a_node_at_given_index
    list = LinkedList.new
    list.append("popcorn")
    list.append("almonds")
    list.append("peanuts")
    list.insert(2, "popcorn")
    assert_equal "popcorn", list.find_by_index(2)
  end

  def test_it_appends_node_if_given_index_greater_than_list_count
    list = LinkedList.new
    list.append("popcorn")
    list.append("almonds")
    list.append("peanuts")
    list.insert(7, "popcorn")
    assert_equal "popcorn", list.find_by_index(3)
  end

  def test_it_returns_true_if_list_includes_given_value
    list = LinkedList.new
    list.append("popcorn")
    list.append("almonds")
    list.append("peanuts")
    list.append("apples")
    assert list.includes?("apples")
  end

  def test_it_returns_false_if_list_does_not_include_given_value
    list = LinkedList.new
    list.append("popcorn")
    list.append("almonds")
    list.append("peanuts")
    list.append("apples")
    refute list.includes?("pear")
  end

  def test_it_pops_node_from_end_of_list
    list = LinkedList.new
    list.append("popcorn")
    list.append("almonds")
    list.append("peanuts")
    list.append("apples")
    assert_equal list.find_node(3).next_node, nil
    assert_equal "apples", list.pop
    assert_equal 3, list.count
    refute list.includes?("apples")
  end

  def test_it_does_not_pop_node_from_middle_of_list
    list = LinkedList.new
    list.append("popcorn")
    list.append("almonds")
    list.append("peanuts")
    list.append("apples")
    refute_equal "almonds", list.pop
    refute list.includes?("apple")
    assert list.includes?("almonds")
  end

  def test_it_counts_number_of_nodes_in_list_if_list_not_empty
    list = LinkedList.new
    list.append("popcorn")
    list.append("almonds")
    list.prepend("peanuts")
    list.append("apples")
    expected = 4
    result = list.count
    assert_equal expected, result
  end

  def test_it_counts_number_of_nodes_in_list_if_list_empty
    list = LinkedList.new
    expected = 0
    result = list.count
    assert_equal expected, result
  end


  def test_it_returns_head_value_at_beginning_of_list
    list = LinkedList.new
    list.append("almonds")
    list.append("peanuts")
    list.prepend("popcorn")
    list.append("apples")
    assert_equal "popcorn", list.head
    refute_equal "peanuts", list.head
  end

  def test_head_returns_nil_if_list_empty
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_it_returns_tail_value_at_end_of_list
    list = LinkedList.new
    list.append("popcorn")
    list.append("almonds")
    list.append("peanuts")
    list.append("apples")
    assert_equal "apples", list.tail
    refute_equal "peanuts", list.tail
  end

  def test_tail_returns_nil_if_list_empty
    list = LinkedList.new
    assert_equal nil, list.tail
  end

  def test_it_finds_the_value_at_given_index
    list = LinkedList.new
    list.append("popcorn")
    list.append("almonds")
    list.append("peanuts")
    list.append("popcorn")
    assert_equal "peanuts", list.find_by_index(2)
  end

  def test_it_finds_position_of_first_occurrence_of_a_value
    list = LinkedList.new
    list.append("popcorn")
    list.append("almonds")
    list.append("apples")
    list.append("peanuts")
    list.append("apples")
    assert_equal 2, list.find_by_value("apples")
  end

  def test_it_removes_the_value_at_specified_index
    list = LinkedList.new
    list.append("popcorn")
    list.append("almonds")
    list.append("peanuts")
    list.append("apples")
    assert_equal "peanuts", list.remove_by_index(2)
    assert_equal 3, list.count
    refute list.includes?("peanuts")
  end

  def test_it_removes_the_first_occurrence_of_specified_value
    list = LinkedList.new
    list.append("popcorn")
    list.append("almonds")
    list.append("peanuts")
    list.append("apples")
    list.append("almonds")
    assert_equal "almonds", list.remove_by_value("almonds")
    assert_equal 4, list.count
    assert list.includes?("almonds")
  end

  def test_it_knows_if_the_list_is_empty
    list = LinkedList.new
    assert list.empty?
  end

  def test_it_returns_false_if_list_is_not_empty
    list = LinkedList.new
    list.insert(0, "peaches")
    refute list.empty?
  end

  def test_it_finds_the_distance_between_two_nodes
    list = LinkedList.new
    list.append("popcorn")
    list.append("almonds")
    list.append("peanuts")
    list.append("apples")
    index1 = list.find_by_value("apples")
    index2 = list.find_by_value("almonds")
    result = (index1 - index2).abs
    assert_equal 2, result
  end

end
