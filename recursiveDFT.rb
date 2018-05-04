def recursiveDFT(node)
  node.visited = true
  neighbors = @graph[node]
  neighbors.each do |neighbor|
    if !neighbor[visited]
        neighbor[visited] = true
        recursiveDFT(neighbor)
    end
end
