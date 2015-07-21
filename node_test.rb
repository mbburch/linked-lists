# uses methods which call themselves to walk through nodes

require 'minitest/autorun'
require 'minitest/pride'
require_relative 'node'

class NodeTest < Minitest::Test

  def test_it_knows_if_it_is_head
    #can a node know it is head??
    node = Node.new
    
    assert node.head?
  end

  def test_it_knows_if_it_is_tail
    #node will know it is tail if it has nil as next node
    skip
    node = Node.new
    refute node.head?
  end

  def test_it_knows_its_numeric_position
    skip
  end




end
