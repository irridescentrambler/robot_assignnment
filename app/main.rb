require_relative "toy.rb"
require_relative "command_parser.rb"

if ARGV[0]
  @commands = []
  command_parser = CommandParser.new
  file_path = ARGV[0]
  file = File.open(file_path)
  file.each_line do |line|
    @commands << line.strip
  end
  @commands.each do |command|
    command_parser.convert_command(command)
  end
else
  puts "Please provide a file path as input"
end
