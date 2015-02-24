class Node
  attr_reader :data, :link

  def initialize(input)
    @data = input
  end

  def add(child)
    if link.nil?
      @link = child
    else
      link.add(child)
    end
  end

  def include?(target)
    if data == target
      true
    elsif link
      link.include?(target)
    end
  end

  def count
    if link
      1 + link.count
    else
      1
    end
  end

  def pop
    if link.link.nil?
      the_data = link.data
      @link = nil
      return the_data
    else
      link.pop
    end
  end
end
