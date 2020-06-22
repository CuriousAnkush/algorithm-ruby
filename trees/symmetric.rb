require 'byebug'
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


root_node =  Node.new(nil , nil , 1)
left_root_node = Node.new(nil , nil , 2)
right_root_node = Node.new(nil , nil , 2)
root_node.left= left_root_node
root_node.right = right_root_node
x_left= Node.new(nil , nil , 2)
y_right= Node.new(nil , nil , nil)
left_root_node.left= x_left
left_root_node.right= y_right
y_left = Node.new(nil , nil , 2)
right_root_node.left = y_left

def is_symmetric(root)
  pre_order = Array.new
  preorder(root, pre_order)
  is_palindrom(pre_order)
end

def preorder(root, pre_order)
  return pre_order if root.nil?
  preorder(root.left, pre_order)
  pre_order.push(root.val)
  preorder(root.right, pre_order)
end

def is_palindrom(array)
  front_pointer = 0
  last_pointer = array.length - 1
  while(front_pointer < last_pointer)
    return false unless array[front_pointer] == array[last_pointer]
    front_pointer = front_pointer + 1
    last_pointer = last_pointer - 1
  end
  true
end

print preorder(root_node, [])
print is_symmetric(root_node)