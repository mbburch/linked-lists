require "./node.rb"

class LinkedList
# mike said all the methods should go in the list class and it calls the node class to create new nodes
#
  attr_reader :head

  def push(data)
    #list only holds reference to one thing... header node(node that represents start of list)
    @head = data
    p @head
  end

  def empty?
    @head = nil
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


end


if __FILE__ == $0
  list = LinkedList.new
  list.push("hello")
end
