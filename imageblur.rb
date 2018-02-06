class Image
	attr_accessor :image_data
	
	def initialize(image_data)
		@image_data = image_data
	end

	
	def output_image

		@image_data.each do |x|
			puts x.join
		end
	end

	def width
		@image_data[0].length
	end

	def height
		@image_data.length
	end

	def blur(distance = 1)
		distance.times do 
			image_blur
		end
	end
		


	def image_blur
		pairs = []

		#go through array and find 1
		@image_data.each_with_index do |inner, j|
			inner.each_with_index do |d, i|

				if d == 1
					coordinates = [i, j]
					pairs.push(coordinates)
					puts pairs.inspect
				end
			end
		end
		
		pairs.each do |position|
			i, j = position

			#blur up
			 @image_data[j - 1][i] = 1 if j - 1 >= 0

		
			#blur down
			 @image_data[j + 1][i] = 1 if j + 1 <= (height - 1)


			# blur to right
			 @image_data[j][i + 1] = 1 if i + 1 <= (width - 1)


			#blur to left
			 @image_data[j][i - 1] = 1 if i - 1 >= 0
		end
	end
end
			

					






image = Image.new([
	[0, 0, 0, 0],
	[0, 1, 0, 0],
	[0, 0, 0, 1],
	[0, 0, 0, 0]
])

image.image_blur	
image.output_image







