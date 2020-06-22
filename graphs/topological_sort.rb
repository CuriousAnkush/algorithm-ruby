no_of_nodes = 8
graph = Array.new(no_of_nodes){Array.new}
graph[0] << 1
graph[1] << 2 << 7
graph[2] << 1 << 3 << 4
graph[3] << 2
graph[4] << 7 << 6 << 5 << 2
graph[5] << 4
graph[6] << 4
graph[7] << 4 << 1
@visited_nodes = Array.new(no_of_nodes){false}

def dfs_visit(start_node, graph)
  @visited_nodes[start_node] = true
  puts "Visited : #{start_node}"
  graph[start_node].each do |adj_node|
    dfs_visit(adj_node, graph) unless @visited_nodes[adj_node]
  end
end

dfs_visit(0, graph)



