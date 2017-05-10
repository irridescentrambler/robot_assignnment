require_relative "table.rb"

class Toy
  attr_accessor :xco_ordinate, :yco_ordinate, :direction
  def initialize(xco_ordinate, yco_ordinate, direction)
    @xco_ordinate = xco_ordinate
    @yco_ordinate = yco_ordinate
    @direction = direction.downcase
  end

  def move
    case @direction
      when "north"
        (@yco_ordinate < 5) ? ( @yco_ordinate += 1 ) : @yco_ordinate
      when "south"
        (@yco_ordinate > 0) ? ( @yco_ordinate -= 1 ) : @yco_ordinate
      when "east"
        (@xco_ordinate < 5) ? ( @xco_ordinate += 1 ) : @xco_ordinate
      when "west"
        (@xco_ordinate > 0) ? ( @xco_ordinate -= 1 ) : @xco_ordinate
    end
  end

  def left
    case @direction
      when "north"
        @direction = "west"
      when "south"
        @direction = "east"
      when "east"
        @direction = "north"
      when "west"
        @direction = "south"
    end
  end

  def right
    case @direction
      when "north"
        @direction = "east"
      when "south"
        @direction = "west"
      when "east"
        @direction = "south"
      when "west"
        @direction = "north"
    end
  end

  def report
    return @xco_ordinate, @yco_ordinate, @direction
  end

end