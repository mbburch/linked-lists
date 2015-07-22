require "./node.rb"
require 'pry'

class LinkedList

  def initialize
    @root = Node.new
  end

  def empty?
    @root.next_node == nil
  end

  def head
    @root.next_node && @root.next_node.data
  end

  def tail
    find_tail.data
  end

  def find_tail
    current_node = @root
    until current_node.next_node == nil
      current_node = current_node.next_node
    end
    current_node
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

  def insert(index, data)
    if index > count
      unreached_index(index, data)
    elsif index <= count
      included_index(index, data)
    end
  end

  def unreached_index(index, data)
    append(data)
    index = count
    "List only has #{count} items. #{Data} appended at position #{index}."
  end

  def included_index(index, data)
    node = Node.new(data)
    previous = find_node(index - 1)
    if previous.next_node
     node.next_node = previous.next_node
    end
      previous.next_node = node
  end

  def includes?(data)
    current_node = @root
    while current_node.data != data && current_node.next_node
      current_node = current_node.next_node
    end
    current_node.data == data
  end

  def pop
    tail_data = tail
    current_node = @root
    until current_node.next_node == nil
      previous_node = current_node
      current_node = current_node.next_node
    end
    previous_node.next_node = nil
    current_node.data
  end

  def count
    current_node = @root
    counter = 0
    if current_node.next_node == nil
      counter
    else
      until current_node.next_node == nil
        current_node = current_node.next_node
        counter += 1
      end
      counter
    end
  end

  def find_node(index)
    current_node = @root
    current_node_index = -1
    until current_node_index == index
      current_node = current_node.next_node
      current_node_index += 1
    end
    current_node
  end

  def find_by_index(index)
    find_node(index).data
  end

  def find_by_value(data)
    current_node = @root
    current_node_index = -1
    until current_node.data == data
      current_node = current_node.next_node
      current_node_index += 1
    end
    current_node_index
  end

  def remove_by_index(index)
    previous_node = find_node(index - 1)
    current_node = find_node(index)
    previous_node.next_node = current_node.next_node
    current_node.data
  end

  def remove_by_value(data)
    current_node = @root
    until current_node.data == data
      previous_node = current_node
      current_node = current_node.next_node
    end
    previous_node.next_node = current_node.next_node
    current_node.data
  end

end


if __FILE__ == $0
  list = LinkedList.new
  list.append("popcorn")
  list.append("almonds")
  list.append("peanuts")
  list.append("apples")
  puts list.insert(7, "candy")
end
