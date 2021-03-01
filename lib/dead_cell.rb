class DeadCell < Cell
  def to_s
    "."
  end

  def iter
    if neighbours.count(&:alive?) == 3
      LivingCell.new(life_array, x, y)
    else
      DeadCell.new(life_array, x, y)
    end
  end
end
