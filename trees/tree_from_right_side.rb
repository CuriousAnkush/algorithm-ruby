
@levels = Array.new
@queue = Queue.new

def level_order_traversal(root)
  return nil if root.nil?
  return root.val if root.right.nil? and root.left.nil?
  @levels.push([root.val])
  @queue.enq(root)
  root.level = 0
  while(!@queue.empty?)
    current_node = @queue.deq
    level = current_node.level + 1
    if current_node.left
      current_node.left.level = level
      @queue.enq(current_node.left)
      @levels[level] =  (@levels[level]|| []).push(current_node.left)
    end
    if current_node.right
      current_node.right.level = level
      @queue.enq(current_node.right)
      @levels[level] =  (@levels[level]|| []).push(current_node.right)
    end
  end
end

@levels.each do |level|
  puts level[-1]
end
