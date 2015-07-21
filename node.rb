class Node

  attr_accessor :data, :pointer

  def initialize(data, pointer = nil)
    @data = data
    @pointer = pointer
  end

  def head?
    @data = nil
  end

  def tail?
    @next = nil
  end

end
