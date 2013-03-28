require 'prime'
class LargestPrime
 
	def largest_prime(num)	
		primearr = []
		product_sum = 1

		tmp_prime = 2 # 2 is the first prime number
 
		while product_sum < num
  			if num % tmp_prime == 0 && prime?(tmp_prime) 
    				primearr << tmp_prime # Array of prime no.s as long as product_sum < n
    				product_sum *= tmp_prime
  			end
  			tmp_prime += 1
		end
		return primearr.last
 	end
end

primeobj = LargestPrime.new
puts "The largest prime factor of 600851475143 is #{primeobj.largest_prime(600_851_475_143)}"


