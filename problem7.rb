require 'prime'

class PrimeFactor
	def find_prime(num)		
		index  = 3 # Start at 3 so we can skip even numbers
		counter = 1 # Counter at 1 because 2 is prime number
 
		while true
  			counter += 1 if prime? index
  			break  if counter == num
  			index += 2 # We can skip the odd numbers
		end
		return index
 	end
end

prime_obj = PrimeFactor.new
puts "The 10,001st prime number is #{prime_obj.find_prime(10_001)}." 

