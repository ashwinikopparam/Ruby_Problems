#convert number to word
def number_to_word(num)

    	word = ""
	
	#put the thousands, hundreds, tens and ones position number in an array
	num_array = num.to_s.split(//).map{|char| char.to_i}
    
    	#Thousands position
    	if num_array.length == 4
        	word = get_thousands(num_array)
    	end
	
	if (num_array.length <= 4)
		#Hundreds position
        	word += get_hundreds(num_array)
        
		#Tens position
		word += get_tens(num_array)
        
        	#Ones position
        	word += get_ones(num_array)
	end

	word.strip
end

def get_thousands(num_array)
	getword(num_array[-4]) + getword(1000) 
end

#Hundreds position
def get_hundreds(num_array)
    	hundredsword = ""
	if(num_array[-3] != nil)
        	if (num_array[-3] != 0)
            		if(num_array[-2] == 0 && num_array[-1] == 0)
                    		hundredsword = getword(num_array[-3]) + getword(100)				    	
			elsif(num_array[-1] !=0 || num_array[-2] != 0)
                    		hundredsword = getword(num_array[-3]) + getword(100) + " and "
	            	end
        	end
        
        	if(num_array[-3] == 0)
            
            		if (num_array[-2] != 0 || num_array[-1] != 0)
                    		hundredsword = " and "
            		elsif(num_array[-2] == 0 && num_array[-1] == 0)
                    		hundredsword = ""
            		end
        	end
    	end
	return hundredsword
end

#Tens position
def get_tens(num_array)
    	tensword = ""
	if(num_array[-2] != nil && num_array[-2] != 0)
        	tensword = getword(num_array[-2]*10) + " "
    	end
	return tensword
end

def get_ones(num_array)
	onesword = ""
    	if(num_array[-1] != nil && num_array[-1] != 0)
        	onesword = getword(num_array[-1])
    	end
	return onesword
end

#length of each word
def length_of_word(num)
	number_to_word(num).gsub(/ /,'').length
end

def getword(index)
	numbername = {1 => "one", 2 => "two", 3 => "three", 4 => "four",
		5 => "five", 6 => "six", 7 => "seven", 8 =>"eight", 9 => "nine",
        	10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen",
		14 => "fourteen", 15 => "fifteen", 16 => "sixteen",
		17 => "seventeen", 18 => "eighteen", 19 => "nineteen",
		20 => "twenty", 30 => "thirty", 40 => "forty",
		50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty",
		90 => "ninety", 100 => "hundred", 1000 => "thousand"}
    
	return numbername[index]
end


print "Number of letters used for numbers from 1 to 1000: "
puts (1..1000).inject(0){|sum,i| sum + length_of_word(i)}
	



	
	
	
	
