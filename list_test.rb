require './list'
require 'minitest/autorun'
require 'minitest/pride'

class ListTest < Minitest::Test
  def test_it_exists
    assert List
  end

  def test_it_inserts_a_piece_of_data
    list = List.new
    refute list.include?("hello")
    list.add("hello")
    assert list.include?("hello")
  end

  def test_it_inserts_two_pieces_of_data
    list = List.new
    list.add("hello")
    list.add("world")
    assert list.include?("hello")
    assert list.include?("world")
  end

  def test_it_pops_the_last_element_of_data
    list = List.new
    list.add("hello")
    list.add("world")
    list.add("!!!")
    assert_equal 3, list.count
    assert_equal "!!!", list.pop
    assert_equal 2, list.count
  end
end
