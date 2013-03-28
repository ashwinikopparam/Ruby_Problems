#valid = false
#until valid == false do

#end

get_x = Proc.new do
		puts "Enter x:"
		x = gets.chomp
		if x.is_a?Integer 
			valid = true
		end
		return x, valid
	end

x, valid = get_x.call
puts x
puts valid
