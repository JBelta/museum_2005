require "minitest/autorun"
require 'minitest/pride'
require './lib/patron'
require './lib/exhibit'

class ExhibitTest < Minitest::Test

  def setup
    @exhibit = Exhibit.new({
                            name: "Gems and Minerals",
                            cost: 0
                            })
    @patron_1 = Patron.new("Bob", 20)
  end

  def test_it_exists
    assert_instance_of Exhibit, @exhibit
  end


end
