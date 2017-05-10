class Table
  attr_accessor :valid_x_coordinates, :valid_y_coordinates

  def initialize
    # valid x and y coordinates
    @valid_x_coordinates = @valid_y_coordinates = (0..5).to_a
  end

  def validate_coordinates?(x,y)
    (( valid_x_coordinates.include? x ) && ( valid_y_coordinates.include? y )) ? true : false
  end
end