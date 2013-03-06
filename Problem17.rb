#convert number to word
def number_to_word(num)

	#number in words 
	word = ""
	name = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 
		5 => "five", 6 => "six", 7 => "seven", 8 =>"eight", 9 => "nine",
        10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen",
		14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 
		17 => "seventeen", 18 => "eighteen", 19 => "nineteen",
		20 => "twenty", 30 => "thirty", 40 => "forty",
		50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty",
		90 => "ninety", 100 => "hundred", 1000 => "thousand"}
	

	#put the thousands, hundreds, tens and ones position number in an array
	num_array = num.to_s.split(//).map{|char| char.to_i}


	#Thousands position
	word = name[num_array[-4]] + " thousand " if num_array.length == 4

	#Hundreds position 
	if (num_array.length <= 4)
		if(num_array[-3] != nil)
			if (num_array[-3] != 0)

				if(num_array[-2] == 0 && num_array[-1] == 0)
					word += name[num_array[-3]] + " hundred "  
				elsif(num_array[-1] !=0 || num_array[-2] != 0)
					word += name[num_array[-3]] + " hundred and "
				end
			end
	
			if(num_array[-3] == 0)

				 if (num_array[-2] != 0 || num_array[-1] != 0)
					word += " and "
				elsif(num_array[-2] == 0 && num_array[-1] == 0)
					word = word		
				end
			end
		end

		#Tens position
		if(num_array[-2] != nil && num_array[-2] != 0)	
			word += name[num_array[-2]*10] + " "
		end

		#Ones position
		if(num_array[-1] != nil && num_array[-1] != 0)	
			word += name[num_array[-1]]
		end
	end

	word.strip
end

#length of each word		
def length_of_word(num)
	number_to_word(num).gsub(/ /,'').length
end


print "Number of letters used for numbers from 1 to 1000: "
puts (1..1000).inject(0){|sum,i| sum + length_of_word(i)}
	



	
	
	
	
