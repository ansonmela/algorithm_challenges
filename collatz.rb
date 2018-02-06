#Collatz Sequence
class Collatz_Seq

	def collatz(n)
		sequence = []

		until n == 1
		#check to see if number is even
			if n % 2 == 0
			#if number is even, then divide method by 2
				n = n / 2
				#check to see if number is odd
			else 
				#if number is odd, then mulitply by 3 and add 1
				n = (3 * n) + 1
			end
			sequence.push(n)
		end
		return sequence
	end

	def find_longest_sequence
		count = 1
		current_longest_sequence = []

		until count == 1000000
				seq = collatz(count)
			if seq.length > current_longest_sequence.length
				current_longest_sequence = seq
				count += 1
			else
				count += 1
			end
		end
		puts "Starting number in sequence is #{current_longest_sequence[0]}
		Sequence length is #{current_longest_sequence.length + 1}"
	end
end



x = Collatz_Seq.new

puts x.collatz(837799).length + 1
puts "------------"
puts x.find_longest_sequence


		
	#take n and determine if odd or even

	#if even
		#divide n by 2


	#if odd
		#multiply 3 and add 1

		#if result is even, return to top.
		#if result is odd, move to odd case.
		#if result is 1, end

	#end
