class LifeArray
  attr_accessor :life_array
  attr_accessor :generation
  attr_accessor :size

  def initialize(content)
    @generation, @size, *life_string = content.each_line.map(&:chomp)

    @life_array = life_string.map.with_index do |life_line, x|
      life_line.each_char.map.with_index do |cell_string, y|
        if cell_string == "*"
          LivingCell.new(self, x, y)
        else
          DeadCell.new(self, x, y)
        end
      end
    end
  end

  def neighbours(x, y)
    ((x - 1)..(x + 1)).flat_map do |xi|
      ((y - 1)..(y + 1)).filter_map do |yi|
        life_array.dig(xi, yi) if xi != yi
      end
    end
  end

  def iter!
    @generation = next_generation
    @life_array = next_life_array
  end

  def to_s
    life_lines = life_array.map do |life_line|
      cells = life_line.map do |cell|
        cell.to_s
      end
      cells.join
    end
    [generation, size, *life_lines].join("\n") + "\n"
  end

  def next_generation
    generation.gsub(/\d+/) { |d| d.to_i + 1 }
  end

  def next_life_array
    life_array.map do |life_line|
      life_line.map do |cell|
        cell.iter
      end
    end
  end
end
