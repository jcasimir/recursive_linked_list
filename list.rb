require "./node"

class List
  attr_reader :head

  def include?(target)
    head && head.include?(target)
  end

  def add(input)
    new_node = Node.new(input)
    if head
      head.add(new_node)
    else
      @head = new_node
    end
  end

  def count
    head.count
  end

  def pop
    head.pop
  end
end
