require './node'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < Minitest::Test
  def test_it_holds_data
    node = Node.new("hello")
    assert_equal "hello", node.data
  end

  def test_it_starts_with_no_link
    node = Node.new("hello")
    refute node.link
  end

  def test_it_adds_a_linked_node
    node = Node.new("hello")
    node2 = Node.new("world")
    node.add(node2)
    assert_equal node2, node.link
  end

  def test_it_adds_multiple_children
    node = Node.new("hello")
    node2 = Node.new("world")
    node3 = Node.new("!!!")
    node.add(node2)
    node.add(node3)
    assert_equal node2, node.link
    assert_equal node3, node.link.link
  end

  def test_it_includes_its_own_data
    node = Node.new("hello")
    assert node.include?("hello")
  end

  def test_it_includes_child_data
    node = Node.new("hello")
    node2 = Node.new("world")
    node.add(node2)
    assert node.include?("world")
  end

  def test_it_does_not_include_nonpresent_data
    node = Node.new("hello")
    node2 = Node.new("world")
    node.add(node2)
    refute node.include?("!!!")
  end
end
