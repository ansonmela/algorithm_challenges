def iterative_fib(n)
	# begin with 0 and 1
	numbers = [0, 1]

	# if input < 2 then return
	return n if n < 2

	# range of sequence == 2 to input
	# loop thru range and for each value apply fib equation
	# push to an array containing initial 0..1 value
	(2..n).each { |num| numbers.push( numbers[num - 1] + numbers[num - 2] ) }

	# return last 
		return numbers.last
end




def recursive_fib(n)
	# if input is 0 or 1, return. Error message: stack too deep
	return n if n == 1 || n == 0
	# use fib equation but in this case call method on itself (recursion)
	( recursive_fib(n - 1) + recursive_fib(n - 2) )
end


require 'benchmark'
n = 35
Benchmark.bm do |x|
	x.report("recursive_fib") { recursive_fib(n) }
	x.report("iterative_fib") { iterative_fib(n) }
end



