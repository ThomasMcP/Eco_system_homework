class River

  attr_reader :name, :number_of_fish

  def initialize(name, fishes)
    @name = name
    @number_of_fish = fishes
  end

  def bear_steals_fish(fish)
    return @number_of_fish.delete(fish)
  end


end
