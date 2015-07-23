# uses methods which call themselves to walk through nodes

require 'minitest/autorun'
require 'minitest/pride'
require_relative 'node'

class NodeTest < Minitest::Test

  def test_it_returns_true_if_node_is_root
    node = Node.new
    assert node.root?
  end

  def test_it_returns_false_if_node_not_root
    node = Node.new("peanuts")
    refute node.root?
  end

  def test_it_returns_true_if_node_is_root
    node = Node.new("pizza")
    refute node.root?
    assert node.tail?
  end

end
