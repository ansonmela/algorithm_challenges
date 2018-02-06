class Tree
	attr_accessor :payload, :children

	def initialize(payload, children)
		@payload = payload
		@children = children
	end

	def dfs_11
		return payload if payload == 11
			children.each do |child|
				this_iteration = child.dfs_11
					if this_iteration == nil
					else
						return this_iteration
					end
			end
		return nil
	end


	# this method has arguments that takes in a initial node, in this case input trunk to start at trunk
	def bfs_11(node, find_this_value)
		# establish an empty array for queue
		queue = []
		# then push node value into queue
		queue.push(node)
		# while queue is not empty, 
		while queue.length != 0
			# set a variable to shift out FIFO value, which is the first element in variable
			value = queue.shift
			# return the variable with the shifted FIFO value if it equals 11
			return value.payload if value.payload == find_this_value
			# if not, then loop thru children of variable and push each |child| back to the queue
			value.children.each do |child|
				queue.push(child)
			end
		end
	end
end

			

# The "Leafs" of a tree, elements that have no children
deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node = Tree.new(4, [])

# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])


# The "Trunk" of the tree
trunk = Tree.new(2, [seventh_node, shallow_fifth_node])
puts trunk.bfs_11(trunk, 11).inspect

puts trunk.dfs_11
