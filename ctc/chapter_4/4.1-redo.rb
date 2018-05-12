


def find_node(graph, start, end)
  return true if(start == end)

  nodes = graph.nodes
  nodes.each{|node| node.state = 'unvisited'}
  q = Queue.new
  q.enqueue(start)
  start.state = 'visiting'
  while(!q.empty)
    u = q.dequeue
    if(!u.nil)
      children = u.getAdjacency
      children.each do |child|
        if(child.state == 'unvisited')
          if(child == end)
            return true
          else
            child.state = 'visiting'
            q.enqueue(child)
          end
        end
      end
    end
    u.state = 'visited'
  end


end
