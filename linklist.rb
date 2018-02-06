class LinkedListNode
	attr_accessor :value, :next_node


	def initialize(value, next_node=nil)
		@value = value
		@next_node = next_node
	end
end


class Stack 
	attr_accessor :data

	def initialize
		@data = nil
	end

	def push(value)
		# value should not be nil		
		@data = LinkedListNode.new(value, @data)
	end

	def pop
		if @data == nil
			return nil
		end

		value = @data.value
		@data = @data.next_node
		return value
	end
end



	def reverse_list(list)
		stack = Stack.new
		while list != nil 

			stack.push(list.value)

			list = list.next_node
		end

		
		new_head = LinkedListNode.new(stack.pop)
		new_tail = new_head

		# while stack is not empty, 
		while stack.data != nil
		# pop value from stack 
			next_value = stack.pop

			# if stack is empty, then break
			if next_value == nil
				break
			end
			
		# make a new node from popped value
			new_node = LinkedListNode.new(next_value)
		# attach node to tail of new list	
			new_tail.next_node = new_node
		# reassign tail to new node
			new_tail = new_node
		end
		return new_head
	end

	# def reverse_list(list, previous=nil)

	# 	while list != nil
	# 		old_pointer = list.next_node
	# 		list.next_node = previous
	# 		previous = list
	# 		list = old_pointer
	# 	end
	# 	return previous
	# end
		


	def print_values(list_node)
			if list_node
				print "#{list_node.value} --> "
				print_values(list_node.next_node)
			else
				print "nil\n"
				return
			end
		end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
# node1.next_node = node3


print_values(node3)


revlist = reverse_list(node3)
print_values(revlist)



def add_to_tail(list, value)
	if list.next_node == nil
		new_node = LinkedListNode.new(value)
		list.next_node = new_node
	else
		add_to_tail(list.next_node, value)
	end
end

add_to_tail(node3, 45)







	




