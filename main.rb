require_relative "toy.rb"

puts "Enter coordinates and direction for the toy"
command = gets

xco_ordinate = command.scan(/[0-9]/).first.to_i
yco_ordinate = command.scan(/[0-9]/).last.to_i
direction = command.scan(/[a-zA-Z]+$/).first.downcase

toy = Toy.new(xco_ordinate, yco_ordinate, direction)

loop do
  puts "Enter commands to manipulate the toy"
  puts "Ex:- move, left, right, report, exit"
  command = gets.strip
  case command
    when "move"
      toy.move
    when "left"
      toy.left
    when "right"
      toy.right
    when "report"
      xco_ordinate, yco_ordinate, direction = toy.report
      puts "The coordinates are (#{xco_ordinate}, #{yco_ordinate})"
      puts "The direction is #{direction}"
    when "exit"
      break
  else
    puts "Invalid command"
  end
end

