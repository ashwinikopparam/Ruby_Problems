LEFT = 'L'
RIGHT = 'R'
MOVE = 'M'
SOUTH = 'S'
NORTH = 'N'
EAST = 'E'
WEST = 'W'


def valid_direction? direction
	direction =~ /(N|S|W|E|n|s|w|e)/ ? true : false
end

def valid_command? command
	command =~ /(L|R|M|l|r|m)/ ? true : false
end

def valid_position? cord
	return cord.is_a?Fixnum 
end

def is_north?
	return self == NORTH
end

def is_south?
	return self == SOUTH
end

def is_west?
	return self == WEST
end

def is_east?
	return self == EAST
end
