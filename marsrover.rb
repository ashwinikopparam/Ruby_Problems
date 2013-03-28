class Rover
	
	def initialize
		@pos_x = 0
		@pos_y = 0
		@direction = 'N'
		
	end
	
	def set_initial_position(x,y,dir)
		if(x.is_a?Integer and  y.is_a?Integer)
			@pos_x, @pos_y = x, y
		else
			puts "Enter valid co-ordinates"
		end		
		if(dir =~ /(N|S|W|E|n|s|w|e)/)
			@direction = dir.upcase
		else
			puts "Enter a valid direction"
		end
	end

	def execute(commands)
		command_arr = commands.each_char.to_a
		command_arr.each{ |instruction| process(instruction)}
	end
	
	def process(instruction)
		if instruction =~ /(L|l)/	
			turn_left
		elsif instruction =~ /(R|r)/
			turn_right
		elsif instruction =~ /(M|m)/
			move_straight
		else
			puts "Enter valid command to execute"

		end
	end

	def print_final_position
		puts "#{@pos_x} #{@pos_y} #{@direction}"
	end

	def turn_left
		if @direction == 'N'
			@direction = 'W'
		elsif @direction == 'S'
			@direction = 'E'
		elsif @direction == 'E'
			@direction = 'N'
		else
			@direction = 'S'
		end
	end

	def turn_right
		if @direction == 'N'
			@direction = 'E'
		elsif @direction == 'S'
			@direction = 'W'
		elsif @direction == 'E'
			@direction = 'S'
		else
			@direction = 'N'
		end
	end
	
	def move_straight
		if @direction == 'N'
			@pos_y += 1	
		elsif @direction == 'S'
			@pos_y -= 1
		elsif @direction == 'E'
			@pos_x += 1
		else
			@pos_x -= 1
		end
	end 
end

class MarsRover
	rover = Rover.new
	rover.set_initial_position(3,3,'e')
	rover.execute('MMRMMRMRRM')
	rover.print_final_position
end
