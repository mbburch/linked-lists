# thing
# 2 values:
#  value
#  tail pointer text

class Node

  attr_accessor :value, :pointer

  def initialize(value, pointer= nil)
    @value = value
    @pointer = pointer
  end

  def add(node)
    # if self(the instance calling the method) has a pointer of nil,
    #   change self's pointer to the node being added.
    #   otherwise, see if self's pointer's pointer is nil and so on.
    if self.pointer == nil
      @pointer = node
    else
      self.pointer.add(node)
    end
  end

# tell don't ask

end

# the below is tedious. What is a faster way? Use .add
# head = Node.new(1)
# node2 = Node.new(2)
# node3 = Node.new(3)
# node1.pointer = node2

head = Node.new(1)
head.add(Node.new(2))
head.add(Node.new(3))

class Dog
  def bark
    self.bark
    #self is the current instance of the dog class
  end
end

spot = Dog.new
spot.bark
