require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new("John")
  end

  def test_make_fish
    assert_equal(Fish, @fish.class)
  end

  def test_fish_name
    assert_equal("John", @fish.name)
  end






end
