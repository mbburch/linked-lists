require "./node.rb"

class LinkedList
# mike said all the methods should go in the list class and it calls the node class to create new nodes. The below is iterative. Try recursive later!
#


  def initialize
    @root = Node.new
  end

  def head
    @root.next_node && @root.next_node.data
  end

  def tail
    find_tail.data
  end

  def find_tail
    current = @root
    until current.next_node == nil
      current = current.next_node
    end
    current
  end

  def append(data)
    node = Node.new(data)
    find_tail.next_node = node
  end

  def prepend(data)
    node = Node.new(data)
    if @root.next_node
     node.next_node = @root.next_node
    end
      @root.next_node = node
  end

  def find_node(index)
    current = @root
    current_index = -1
    until current_index == index
      current = current.next_node
      current_index += 1
    end
    current
  end

  def insert(index, data)
    # how to find the node we'll be working with?
    # similar to tail, except stop at number. counts from zero to number as it iterates
    node = Node.new(data)
    previous = find_node(index - 1)
    if previous.next_node
     node.next_node = previous.next_node
    end
      previous.next_node = node
  end

  # def push(data)
  #   #list only holds reference to one thing... header node(node that represents start of list)
  #   @head = data
  #   p @head
  # end

  # def empty?
  #   @head = nil
  # end

  def include?
  end

  def pop
  end

  def count
    # list check with head
    # if head is nil, list is empty and count = 0
    # if head is not empty, and head next is nil, count is one
    # if head next != nil, add one to count, and keep passing the message
    # once a node.next returns nil, that will be the final count
    if @root.nil?
      counter == 0
      current = @root
    else
      until current.next_node == nil
      current = current.next_node
      counter += 1
      end
      counter
    end
  end

end


#if inserting a node in the middle of list, you need to tell node ahead of it that  its' new next node will be the next node
#of node being removed before you set node being removed to nil



if __FILE__ == $0
  list = LinkedList.new
  node = Node.new("data")
end
