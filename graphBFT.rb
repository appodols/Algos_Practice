require_relative "graph"
require_relative "queue_as_linked_list"


def graphBFT(start)
  #input is a starting vertex
  q = queue_as_linked_list.new()
  start[visited] = true
  q.enqueue(start)
  while(!q.empty)
    node = e.dequeue()
    #do something to the node
    neighbors = @graph[node]
    neighbors.each do |neighbor|
      if !neighbor[visited]
          neighbor[visited] = true
          q.enqueue(neighbor)
      end
    end
  end
end
