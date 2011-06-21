class Numeric
  def dollar
    raise "Called only by value 1" if self != 1
    Dollar.new(self)
  end

  def dollars
    raise "Called only by value > 1" if self == 1
    Dollar.new(self)
  end 

  def riel
    raise "Called only by value = 1"  if self != 1
    Riel.new(self)
  end

  def riels
    raise "Called only by value > 1" if self == 1
    Riel.new(self)
  end

end

class Dollar
  Rate = 4000.0

  def initialize(v)
    @value = v
  end

  def to_riel
    (@value * Rate).to_s << " riels"
  end
end

class Riel
  Rate = 4000.0

  def initialize(v)
    @value = v
  end

  def to_dollar
    (@value / Rate).to_s << " dollars"
  end
end

