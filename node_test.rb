# uses methods which call themselves to walk through nodes

require 'minitest/autorun'
require 'minitest/pride'
require_relative 'node'

class NodeTest < Minitest::Test

  def test_it_knows_if_it_is_root
    node = Node.new
    assert node.root?
  end

  def test_it_knows_if_it_is_tail
    node = Node.new("pizza")
    refute node.head?
    assert node.tail?
  end

end
