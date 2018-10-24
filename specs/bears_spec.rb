require('minitest/autorun')
require('minitest/rg')
require_relative('../bears')
require_relative('../fish')

class TestBears < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @fish1 = Fish.new("Donald")
  end

  def test_can_create_bear
    expected = Bear
    actual = @bear.class()
    assert_equal(expected, actual)
  end

  def test_name
    expected = "Yogi"
    actual = @bear.name
    assert_equal(expected, actual)
  end

  def test_type
    expected = "Grizzly"
    actual = @bear.type
    assert_equal(expected, actual)
  end

  def test_bear_stomach_empty
    assert_equal(0, @bear.stomach.length)
  end

  def test_bear_can_roar
    assert_equal("Rooaaaarrrr!", @bear.roar)
  end

  def test_bear_eats_fish
    #want to assert that fish is now in stomach array
    #by calling length after adding
    @bear.bear_eats_fish(@fish1)
    assert_equal(1, @bear.stomach.length)
  end

end
