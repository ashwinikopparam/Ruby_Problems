def fib(n)

	if n < 2
		return 0
	elsif n < 6
		return 2
	else
		return 4 * fib(n-3) + fib(n-6)
	end
end

def sum(limit,index = 3, sum = 0)
	value = fib(index)

	if value > limit
		return sum
	end

	sum += value
	sum(limit, index + 3, sum)
end

puts "\nSum:#{sum(4000000)}"
