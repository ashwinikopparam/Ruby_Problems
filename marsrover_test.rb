require 'test/unit'
require 'marsrover'
class MarsRoverTest < Test::Unit::TestCase
	def initialize_test
		rover = Rover.new
		assert_equal(rover.pos_x,1)
		assert_equal(rover.pos_y, 3)
	end
end
