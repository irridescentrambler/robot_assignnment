require_relative "toy.rb"

toy = Toy.new

loop do

  puts "Enter commands to move the robot toy"
  command = gets.strip

  case command.downcase
    when "move"
      toy.move
    when "left"
      toy.left
    when "right"
      toy.right
    when "report"
      toy.report
    when "exit"
      break
    else
      puts "Invalid command"
  end
end