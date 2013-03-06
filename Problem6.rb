#Difference of the sum of the squares of first 100 natural numbers and the square of their sum
class SumSqDiff
	def sum_of_squares(n)
		(1..100).inject(0){|sum,i| sum += i*i}
	end
	def square_of_sum(n)
		sum = 0
		(1..100).inject(0){|sum,i| sum +=i}
		sum*sum
	end
	def diff_of_sum(num1,num2)
		num1 - num2 
	end
end

sumsqdiff_inst = SumSqDiff.new

puts "Difference of the sum of the squares of first 100 natural numbers and the square of the sum: #{sumsqdiff_inst.diff_of_sum(sumsqdiff_inst.square_of_sum(100),sumsqdiff_inst.sum_of_squares(100))}"
