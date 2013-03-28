require 'test/unit'
require 'rover'
require 'navigator'


class MarsRoverTest < Test::Unit::TestCase
	def test_marsrover
		rover = Rover.new
		rover.set_initial_position(1,2,'N')
		assert rover.navigator.pos_x == 1 and rover.navigator.pos_y == 2 and rover.navigator.direction == 'N'
		rover.execute('LMLMLMLMM')
		str = rover.navigator.pos_x.to_s + " " + rover.navigator.pos_y.to_s + " " + rover.navigator.direction
		assert_equal str, "1 3 N"
		
	
		rover.set_initial_position(3,3,'E')
		assert rover.navigator.pos_x == 3 and rover.navigator.pos_y ==3 and rover.navigator.direction == 'E'
		rover.execute('MMRMMRMRRM')
		str = rover.navigator.pos_x.to_s + " " + rover.navigator.pos_y.to_s + " " + rover.navigator.direction
		assert_equal str, "5 1 E"
	end

end 








