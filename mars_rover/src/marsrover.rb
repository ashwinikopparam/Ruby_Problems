require File.expand_path(".","rover")

rover = Rover.new
rover.set_initial_position(1,2,'N')
rover.execute('LMLMLMLMM')
rover.print_final_position
