require "minitest/autorun"
require 'minitest/pride'
require './lib/patron'

class PatronTest < Minitest::Test

  def test_it_exists
    patron_1 = Patron.new("Bob", 20)
    assert_instance_of Patron, patron_1
  end

  def test_it_has_attributes
    patron_1 = Patron.new("Bob", 20)

    assert_equal "Bob", patron_1.name
    assert_equal 20, patron_1.spending_money
    assert_equal [], patron_1.interest
  end

  def test_adding_interest
    patron_1 = Patron.new("Bob", 20)
    example = "Example"
    patron_1.add_interest(example)
    assert_equal ["Example"], patron_1.interest
  end
end
