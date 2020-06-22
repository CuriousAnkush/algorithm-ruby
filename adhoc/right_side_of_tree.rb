@levels = Array.new
@queue = Queue.new


# def level_order_traversal(root)
#   return nil if root.nil?
#   return root.val if root.right.nil? and root.left.nil?
#   @levels.push([root.val])
#   @queue.enq(root)
#   root.level = 0
#   while(!@queue.empty?)
#     current_node = @queue.deq
#     level = current_node.level + 1
#     if current_node.left
#       current_node.left.level = level
#       @queue.enq(current_node.left)
#       @levels[level] =  (@levels[level]|| []).push(current_node.left.val)
#     end
#     if current_node.right
#       current_node.right.level = level
#       @queue.enq(current_node.right)
#       @levels[level] =  (@levels[level]|| []).push(current_node.right.val)
#     end
#   end
# end
#
# @levels.each do |level|
#   puts level[-1]
# end

class Node
  attr_accessor :right, :left, :val

  def initialize(left, right, value)
    self.left = left
    self.right = right
    self.val = value
  end
end

class Tree
  attr_accessor :root
end


root_node =  Node.new(nil , nil , 5)
left_root_node = Node.new(nil , nil , 3)
right_root_node = Node.new(nil , nil , 6)
root_node.left= left_root_node
root_node.right = right_root_node
x_left= Node.new(nil , nil , 2)
y_right= Node.new(nil , nil , 4)
left_root_node.left= x_left
left_root_node.right= y_right

x_left_left= Node.new(nil , nil , 1)
x_left.left= x_left_left
@max_level = -1
# def right_side_of_tree(root, current_level)
#   return if root.nil?
#   if (current_level > @max_level)
#     puts root.val
#     @max_level = current_level.clone
#   end
#   right_side_of_tree(root.right, current_level+1)
#   right_side_of_tree(root.left, current_level+1)
# end
#
# right_side_of_tree(root_node, 0)

def left_side_of_tree(root, current_level)
  return if root.nil?
  if (current_level > @max_level)
    puts root.val
    @max_level = current_level
  end
  left_side_of_tree(root.left, current_level + 1)
  left_side_of_tree(root.right, current_level + 1)
end

left_side_of_tree(root_node, 0)