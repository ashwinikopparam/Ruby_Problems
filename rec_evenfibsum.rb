class EvenFibSum

	def fib(n)
		n < 2 ? n : fib(n-1) + fib(n-2)
	end
	
	def sum_of_evenfib(max, index = 3, sum = 0)
		value = fib(index)		
		
		if value > max
			return sum
		end

		sum += value 
		# Every 3rd no. in the series is even, so (index + 3)
		sum_of_evenfib(max, index + 3, sum) 
	end
end

obj = EvenFibSum.new

puts "Sum of Even Fibonacci numbers: #{obj.sum_of_evenfib(4000000)}"	




       
	
	








       









		
		
	













