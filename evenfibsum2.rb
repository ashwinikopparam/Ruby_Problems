
def sum_of_evenfib(limit)
	if limit < 2 
		return 0
	end
	if limit < 8
		return 2
	end
	
	sec_last_even_no, last_even_no = 2, 8
	curr_no = get_current_no(last_even_no, sec_last_even_no)
	sum = sec_last_even_no + last_even_no

	while curr_no <= limit
		sum += curr_no
		sec_last_even_no, last_even_no = last_even_no, curr_no
		curr_no = get_current_no(last_even_no, sec_last_even_no)
	end
	return sum
end

def get_current_no(last_no, sec_last_no)
	return 4 * last_no + sec_last_no
end
puts "Sum: #{sum_of_evenfib(4000000)}"













