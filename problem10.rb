require 'prime'

class SumOfPrimes	
	def primes(upto)
		prime_arr = []
		(2..upto).each{|num| prime_arr << num if prime? num}	
		prime_arr
	end

	def sum_of_primes(prime_arr)
		sum = 0
		prime_arr.each{|prime_no| sum += prime_no}
		sum
	end
end

obj = SumOfPrimes.new

puts "Sum of all primes below 10: #{obj.sum_of_primes(obj.primes(2000000))}"
