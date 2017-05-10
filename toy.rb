class Toy
  attr_accessor :xco_ordinate, :yco_ordinate, :direction, :command
  def initialize
    puts "Give your toy commands"
    @command = gets
    #puts @command.scan(/[0-9]/)
    #puts @command.scan(/[a-zA-Z]+$/)
  end

  def place(x,y,f)
  end

  def move
  end

  def left
  end

  def right
  end

  def report
  end

end