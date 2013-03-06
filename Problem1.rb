#Sum of all the numbers between 1 and 1000 which is a multiple of 3 or 5
class SumMultiples3or5
	def sum_of_multiples
		(1...1000).inject(0) { |@sum,i| i%3==0 || i%5==0 ? @sum += i : @sum = @sum}
	end	
end

s = SumMultiples3or5.new
puts "Sum of all the multiples of 3 or 5 below 1000: #{s.sum_of_multiples}"

