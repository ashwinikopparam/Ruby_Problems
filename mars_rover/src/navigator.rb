require File.expand_path(".", 'validcheck')

class Navigator
	attr_reader :pos_x, :pos_y, :direction

	def initialize(x, y, dir)
		@pos_x, @pos_y, @direction = x, y, dir
	end

	def turn(command)
		@direction = turn_left if command == LEFT
		@direction = turn_right if command == RIGHT
	end

	def turn_right
		if @direction == NORTH
			return EAST
		elsif @direction == SOUTH
			return WEST
		elsif @direction == EAST
			return SOUTH
		elsif @direction == WEST
			return NORTH
		end 	
	end

	def turn_left
		if @direction == NORTH
			return WEST
		elsif @direction == SOUTH
			return EAST
		elsif @direction == EAST
			return NORTH
		elsif @direction == WEST
			return SOUTH
		end
	end

	def move_straight 
		@pos_y += 1 if @direction == NORTH
		@pos_y -= 1 if @direction == SOUTH
		@pos_x += 1 if @direction == EAST
		@pos_x -= 1 if @direction == WEST
	end

	def print_position
		puts "#{@pos_x} #{@pos_y} #{@direction}"
	end

end
	
