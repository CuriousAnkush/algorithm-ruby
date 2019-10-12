class Node
  attr_accessor :right, :left, :value

  def initialize(left, right, value)
    self.left = left
    self.right = right
    self.value = value
  end
end

class Tree
  attr_accessor :root
end


root_node =  Node.new(nil , nil , 1)
left_root_node = Node.new(nil , nil , 2)
right_root_node = Node.new(nil , nil , 3)
root_node.left= left_root_node
root_node.right = right_root_node

def level_order_traversal(tree)
  return nil unless tree
  tree_order = Queue.new
  tree_order.enq tree
  while(!tree_order.empty?)
    tree =  tree_order.deq
    tree_order.enq(tree.left) if tree.left
    tree_order.enq(tree.right) if tree.right
    puts tree.value
  end
end

level_order_traversal(root_node)
