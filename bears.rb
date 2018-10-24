class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def roar
    return "Rooaaaarrrr!"
  end

  def bear_eats_fish(fish)
    return @stomach << fish
  end

end
