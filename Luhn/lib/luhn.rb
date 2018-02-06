module Luhn
	def self.is_valid?(number)
		digits = number.to_s.chars.map(&:to_i)
		digits.reverse!

		sum = 0

		digits.each_with_index do |d, i|
      		if i % 2 == 0
        		sum += d
      		else
        		value = (2*d >= 10) ? (2*d - 9) : (2*d)
        		sum += value
      		end
    	end
    	

    	sum % 10 == 0
  	end
end

