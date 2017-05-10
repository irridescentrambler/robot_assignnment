require "byebug"
require_relative "table.rb"

class Toy
  def initialize
    puts "Enter Place command to place your toy on table"
    @command = gets
    @table = Table.new
    if @table.validate_coordinates?(@command.scan(/[0-9]/).first.to_i, @command.scan(/[0-9]/).last.to_i)
      @xco_ordinate = @command.scan(/[0-9]/).first.to_i
      @yco_ordinate = @command.scan(/[0-9]/).last.to_i
      @direction = @command.scan(/[a-zA-Z]+$/).first
      puts "Your toy is placed at (#{@xco_ordinate}, #{@yco_ordinate}) with direction #{@direction}"
    else
      puts "Invalid coordinates. Please give your toy valid coordinates using Place command. Ex:- Place xco_ordinate, yco_ordinate, direction"
    end
  end

  def move
    case @direction
      when "North"
        (@yco_ordinate < 5) ? ( @yco_ordinate += 1 ) : @yco_ordinate
      when "South"
        (@yco_ordinate > 0) ? ( @yco_ordinate -= 1 ) : @yco_ordinate
      when "East"
        (@xco_ordinate < 5) ? ( @xco_ordinate += 1 ) : @xco_ordinate
      when "West"
        (@xco_ordinate > 0) ? ( @xco_ordinate -= 1 ) : @xco_ordinate
    end
  end

  def left
    case @direction
      when "North"
        @direction = "West"
      when "South"
        @direction = "East"
      when "East"
        @direction = "North"
      when "West"
        @direction = "South"
    end
  end

  def right
    case @direction
      when "North"
        @direction = "East"
      when "South"
        @direction = "West"
      when "East"
        @direction = "South"
      when "West"
        @direction = "North"
    end
  end

  def report
    puts "The coordinates are (#{@xco_ordinate}, #{@yco_ordinate})"
    puts "The direction is #{@direction}"
  end

end