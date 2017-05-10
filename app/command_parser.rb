require_relative "toy.rb"

class CommandParser
  def initialize
    @valid_state = false
  end

  def convert_command(command)
    unless command !~ /(PLACE)\s[0-9][,][0-9],[A-Z]+/
      @valid_state = true
      xco_ordinate, yco_ordinate = command.scan(/[0-9]+/).collect{|command| command.to_i}
      direction = command.scan(/[A-Z]+\z/).first
      @toy = Toy.new(xco_ordinate, yco_ordinate, direction)
    else
      if @valid_state == true
        case command
          when "MOVE"
            @toy.move
          when "LEFT"
            @toy.left
          when "RIGHT"
            @toy.right
          when "REPORT"
            @toy.report
            puts "The coordinates are ( #{@toy.xco_ordinate}, #{@toy.yco_ordinate} )"
            puts "The direction is #{@toy.direction}"
        end
      end
    end
  end
end