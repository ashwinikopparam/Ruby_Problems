class EvenFibSum
	
	def fib(n)
		n < 2 ? n : fib(n-1) + fib(n-2)
	end

	def sum_of_evenfib(max)
		index, sum  = 1, 0
		
		while((value = fib(index)) < max)	
			print "#{value} "
			sum += value if value.even?
			index += 1	
		end
		return sum
	end
end

obj = EvenFibSum.new

beg_time = Time.now
puts "Sum of even fibonacci numbers: #{obj.sum_of_evenfib(1000)}"
end_time = Time.now
puts "Time elapsed #{(end_time - beg_time) * 1000} milliseconds"






