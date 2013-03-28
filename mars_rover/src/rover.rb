require File.expand_path(".", "navigator")
require File.expand_path(".", 'validcheck')

class Rover
	attr_accessor :navigator

	def set_initial_position(x, y, dir)
		if valid_position? x and valid_position? y and valid_direction? dir
			@navigator = Navigator.new(x, y, dir.upcase)	
		else
			raise ArgumentError.new("Please enter valid inputs \n x and y co-ordinates must be integers \n Valid Directions: N/S/E/W")
		end
	end

	def execute(instruction)
		instruction_arr = instruction.each_char.to_a
		instruction_arr.each{|command| process(command.upcase)}
	end

	def process(command)
		if valid_command? command
			if command == LEFT or command == RIGHT
				@navigator.turn(command)		
			elsif command == MOVE
				@navigator.move_straight
			end
		else
			raise ArgumentError.new('Valid commands: L/R/M')
		end
	end


	def print_final_position
		@navigator.print_position
	end
end
		 
