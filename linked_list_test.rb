# uses methods which call themselves to walk through nodes

require 'minitest/autorun'
require 'minitest/pride'
require'./linked_list'

class LinkedListTest < Minitest::Test

  def test_it_exists
    list = LinkedList.new
  end

  def test_it_knows_if_the_list_is_empty
    skip
      list = LinkedList.new
      expected = true
      result = list.empty?
      assert_equal expected, result
  end

  def test_it_counts_number_of_elements_in_list
    list = LinkedList.new
    expected = 0
    result = list.count
    assert_equal expected, result
  end

  def test_it_inserts_an_element_into_the_list
    skip
    # head will not be nil; list count will increase by one
    list = LinkedList.new
    list.push("Hello")
    expected = 1
    result = list.count
    assert_equal expected, result
  end

  def test_it_appends_an_element_to_end_of_list
    skip
    #method will find tail of list and add new item there.
  end

  def test_it_prepends_an_element_to_beginning_of_list
    skip
  #  does head know it's the head?
  end

  def test_it_inserts_an_element_at_arbitrary_list_position
    skip
  end

  def test_it_returns_true_if_supplied_value_is_in_list
    skip
  end

  def test_it_returns_false_if_supplied_value_is_not_in_list
    skip
  end

  def test_it_pops_element_from_end_of_list
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



end
