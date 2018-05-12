


def find_node(node1, node2)
  q = Queue.new()
  q.enqueue(node1)
  while(!q.empty)
    node = q.dequeue
    return true if node.data == node2
    children = ajacency_list[node.children]
    children.each{|child| q.enqueue(child)}
  end
  false
end


#what did we do wrong...
  #1 check if starting node == ending node
  #2 set all nodes in the graph to not be visited
  #3 describe current node to be visited
  #4 check to see if node isn't null from the dequeue
  # change the visiting status of the first node to be visited once all of it's children
  # have been visited

  #remember, there are 3 states a node can have in graphs
  # 1. unvisited, 2) visiting, 3: visiting




  #again--we forgot
  #a) check the beginning condition
  #b) change start.state to visiting
  #c) we need to check to see if the node is unvisited before doing stuff
  #d) in the queue
  #e) after we have added it to the queue, change the state of the node
  # to visiting so that it is not double added
