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


root_node =  Node.new(nil , nil , 5)
left_root_node = Node.new(nil , nil , 3)
right_root_node = Node.new(nil , nil , 6)
root_node.left= left_root_node
root_node.right = right_root_node
x_left= Node.new(nil , nil , 2)
y_right= Node.new(nil , nil , 4)
left_root_node.left= x_left
left_root_node.right= y_right


def serialize(root)
  @root_position_struct = Struct.new(:value, :position) do

  end
  serialized_tree = []
  queue = Queue.new
  queue.enq(@root_position_struct.new(root, 0))
  while(!queue.empty?)
    queue_size = queue.size
    while(queue_size > 0)
      current_node = queue.deq
      serialized_tree.insert(current_node.position, current_node.value.value)
      queue.enq(@root_position_struct.new(current_node.value.left, 2*current_node.position + 1)) if current_node.value.left
      queue.enq(@root_position_struct.new(current_node.value.right, 2*current_node.position + 2,)) if current_node.value.left
      queue_size = queue_size - 1
    end
  end
  serialized_tree.to_s
end

puts serialize(root_node).inspect



def deserialize(array_str)
  array = eval(array_str)
  @node_and_position_pair = Struct.new(:node, :position) do

  end
  queue = Queue.new
  root = Node.new(nil , nil, array.first)
  queue.enq(@node_and_position_pair.new(root, 0))
  while(!queue.empty?)
    pair = queue.deq
    next if pair.node.nil?
    left_childrend_pos = pair.position*2 + 1
    if left_childrend_pos < array.length
      if array[left_childrend_pos].nil?
        pair.node.left = nil
      else
        pair.node.left = Node.new(nil , nil, array[left_childrend_pos], )
      end
      queue.enq(@node_and_position_pair.new(pair.node.left, left_childrend_pos))
    end
    right_childrend_pos = left_childrend_pos + 1
    if right_childrend_pos < array.length
      if array[left_childrend_pos].nil?
        pair.node.right = nil
      else
        pair.node.right = Node.new( nil , nil, array[right_childrend_pos],)
      end
      queue.enq(@node_and_position_pair.new(pair.node.right, right_childrend_pos))
    end
  end
  root
end
puts deserialize(serialize(root_node)).inspect
puts root_node.inspect



