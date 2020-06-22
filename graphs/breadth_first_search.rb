no_of_nodes = 8
graph = Array.new(no_of_nodes){Array.new}
graph[0] << 1
graph[1] << 2 << 7
graph[2] << 1 << 4 << 3
graph[3] << 2
graph[4] << 7 << 6 << 5 << 2
graph[5] << 4
graph[6] << 4
graph[7] << 4 << 1

@visited_nodes = Array.new(no_of_nodes){false}
@queue = Queue.new

def bfs_visit(node_number, graph)
  @queue.enq(node_number)
  until (@queue.empty?)
    node_number = @queue.deq
    unless @visited_nodes[node_number]
      @visited_nodes[node_number] = true
      puts "Node number: #{node_number}"
    end
    graph[node_number].each do |adj_node|
      @queue.enq(adj_node) unless @visited_nodes[adj_node]
    end
  end
end

bfs_visit(0, graph)
