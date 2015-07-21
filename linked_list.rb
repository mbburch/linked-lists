require "./node.rb"

class LinkedList
# mike said all the methods should go in the list class and it calls the node class to create new nodes. The below is iterative. Try recursive later!
#
  attr_reader :head

  def initialize(node = nil)
    @head = node
  end

  def append(node)
    # append node to end of list
    if @head == nil
      @head = node
    else
      current = @head
      until current.next_node == nil
        current = current.next_node
      end
      current.next_node = node
    end
  end

  def prepend(node)
    if @head.nil?
      @head = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def insert(index, node)
  end

  # def push(data)
  #   #list only holds reference to one thing... header node(node that represents start of list)
  #   @head = data
  #   p @head
  # end

  # def empty?
  #   @head = nil
  # end

  def includes?
  end

  def pop
  end

  def count
    # list check with head
    # if head is nil, list is empty and count = 0
    # if head is not empty, and head next is nil, count is one
    # if head next != nil, add one to count, and keep passing the message
    # once a node.next returns nil, that will be the final count
    if empty?
      count == 0
    elsif self.pointer == nil
      count += 1
    end
  #   else
  #     self.pointer.count
  #   end
  #   end
  end

=begin
if inserting a node in the middle of list, you need to tell node ahead of it that  its' new next node will be the next node 
of node being removed before you set node being removed to nil
=end


end


if __FILE__ == $0
  list = LinkedList.new
  list.push("hello")
end
