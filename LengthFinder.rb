#Length of each string in a array of strings
def length_finder(array)
	array.map{|str| str.length}
end

input_array = ['Ruby','C','Python']
puts "Length of strings in array #{input_array.inspect}:#{length_finder(input_array).inspect}"

