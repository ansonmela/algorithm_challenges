class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = left
    @right = right
  end
end


class BTreeSort	
	def self.build(array)
		#take the first element and set it to be the trunk of the tree
		first_element = array[0]
		trunk = BinaryTree.new(first_element, nil, nil)
		#create an array without the first element, since it was already used to initialize the tree
		rest = array.last(array.length - 1)

		#loop thru the array and shift next value in array and store in variable
		rest.each do |i|
			queue = []
			queue.push(trunk)

			node = BinaryTree.new(i, nil, nil)
			while queue.length != 0
				n = queue.shift

				if i < n.payload
					if n.left == nil
						n.left = node
					else
						queue.push(n.left)
					end
				else
					if n.right == nil
						n.right = node
					else
						queue.push(n.right)
					end
				end
			end
		end
		return trunk
	end



	def self.order(node, sorted_array)
		return "Done" if node == nil

		self.order(node.left, sorted_array)
		sorted_array << (node.payload)
		self.order(node.right, sorted_array)
		return sorted_array
	end


	def self.sort(array)
		trunk = self.build(array)
		sorted_array = []

		return self.order(trunk, sorted_array)

	end
end



array = [7, 4, 9, 1, 6, 14, 10]


p BTreeSort.sort(array)


# loop thru array_minus_first_element, for each element
# for each element, find the location that the element should go in the tree
# to do this, keep looking thru the children until you get to point where
# if you were to insert element, you would replace a nil child
# 2. put it at the location where it belongs, therefore modifying tree itself
# build a binary tree containing the current element, two nil children and putting
# it into the tree itself
#end
#
