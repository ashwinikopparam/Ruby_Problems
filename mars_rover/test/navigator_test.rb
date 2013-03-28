require 'test/unit'
require 'src/navigator'

class NavigatorTest < Test::Unit::TestCase
	def test_navigator
		nav = Navigator.new(1,1,'N')

		assert_not_nil nav.pos_x
		assert_not_nil nav.pos_y
		assert_not_nil nav.direction

		nav.turn_left
		assert_equal nav.direction, 'W'

		nav.turn_right
		assert_equal nav.direction, 'N'

		nav.move_straight
		assert_equal nav.pos_y, 2
	end
end

