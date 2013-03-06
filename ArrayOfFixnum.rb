#Find if all the elements in the array are Fixnum
#Return true if so else return false

def array_of_fixnum?(array)
	array.all?{|x| x.is_a?Fixnum}
end

puts "For array ['a',1,3]:#{array_of_fixnum?(['a',1,3])}"
puts "For array [1,2,3]:#{array_of_fixnum?([1,2,3])}"
