class LivingCell < Cell
  def to_s
    "*"
  end

  def iter
    if neighbours.count(&:alive?) < 2 || neighbours.count(&:alive?) > 3
      DeadCell.new(life_array, x, y)
    else
      LivingCell.new(life_array, x, y)
    end
  end
end
