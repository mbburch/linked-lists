class Node

  attr_accessor :data, :next_node

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end

  def head?
    @data = nil
  end

  def tail?
    @next = nil
  end

end
