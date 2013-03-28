require 'test/unit'
require 'navigator'

class NavigatorTest < Test::Unit::TestCase
	nav = Navigator.new(1,1,'N')
	
	def test_initialize
		assert_not_nil nav.pos_x
		assert_not_nil nav.pos_y
		assert_not_nil nav.direction
	end
	
	def test_turn_left
		nav.turn_left
		assert_equal nav.direction, 'W'
	end

	def test_turn_right
		nav.turn_right
		assert_equal nav.direction, 'N'
	end
	
	def test_move_straight
		nav.move_straight
		assert_equal nav.pos_y, 2
	end
end

