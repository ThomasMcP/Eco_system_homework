require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')
require_relative('../bears')

class TestRiver < MiniTest::Test

  def setup
    @fish1 = Fish.new("Tom")
    @fish2 = Fish.new("Ray")
    @fish3 = Fish.new("Alex")
    @fish4 = Fish.new("Laura")
    @fish5 = Fish.new("Steven")
    @bear1 = Bear.new("Jeff","Hungry Bear")
    fishes = [@fish1, @fish2, @fish3, @fish4, @fish5]

    @river = River.new("Amazon", fishes)
  end

  def test_make_river
    assert_equal(River, @river.class)
  end

  def test_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_get_fish_name
    assert_equal("Tom", @fish1.name)
  end

  def test_fishes_in_river
    assert_equal(5, @river.number_of_fish.length)
  end

  def test_bear_steals_fish
    @river.bear_steals_fish(@fish5)
    assert_equal(4, @river.number_of_fish.length)
    p @river.number_of_fish.length
  end

end
