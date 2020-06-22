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



# def level_order_traversal(tree)
#   return nil unless tree
#   tree_order = Queue.new
#   tree_order.enq tree
#   while(!tree_order.empty?)
#     tree =  tree_order.deq
#     tree_order.enq(tree.left) if tree.left
#     tree_order.enq(tree.right) if tree.right
#     puts tree.value
#   end
# end

# level_order_traversal(root_node)

@times = 0
def kth_smallest(root, k)
  val = kth_smallest(root.left, k) if root.left
  return val if val
  @times = @times + 1
  if(@times == k)
    @times = 0
    return root.val
  end
  val = kth_smallest(root.right, k) if root.right
  return val if val
end

puts kth_smallest(root_node, 4)
