require 'test/unit'
require 'src/validcheck'

class TestValidCheck < Test::Unit::TestCase
	def test_valid
		assert valid_command? 'L'
		assert valid_position? 3
		assert valid_direction?'N'
	end
end
