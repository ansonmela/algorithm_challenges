def string_to_int(input)
	input = input.split(".")[0] if input.include?(".")
	sign = input[0] == '-' ? -1 : 1
	input.gsub!(/\A-/, '')

	total = input.chars.reverse.each_with_index.inject(0) do |acc, (n, i)|
		acc + ((n.ord - 48) * 10 ** i)
	end
	total * sign
end
p string_to_int("-12345.50")
