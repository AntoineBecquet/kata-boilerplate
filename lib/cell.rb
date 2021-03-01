class Cell
  attr_reader :life_array
  attr_reader :x
  attr_reader :y

  def initialize(life_array, x, y)
    @life_array  = life_array
    @x           = x
    @y           = y
  end

  def alive?
    is_a?(LivingCell)
  end

  def neighbours
    life_array.neighbours(x, y)
  end
end

require_relative "./dead_cell"
require_relative "./living_cell"
