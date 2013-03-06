# Sum of all the even valued terms in a Fibonacci sequence(value of last term in the seq < 500)
class EvenFibSum
	
	def fib(n)
		n < 2 ? n : fib(n-1) + fib(n-2)
	end

	def sum_of_evenfib
		i = 1
		sum = 0
		while(fib(i) < 500)	
			print "#{fib(i)} "
			sum += fib(i) if fib(i)%2 == 0
			i += 1	
		end
		return sum
	end
end

x = EvenFibSum.new
print "Fibonacci Sequence(value less than 500):"
puts "\nSum of the even-valued terms: #{x.sum_of_evenfib}"



