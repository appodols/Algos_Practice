
#where g = graph and s = source
#pseudo code
require_relative 'heap'
def djikstra(g, s)

  g.vertices.each do |v|
    v[dist] = 100000
    v.prev = nil
  end

  pq = Heap.new()
  while !pq.empty?
    u = pq.remove_min()
    u.edges.each do |edge|
      if u.dist + cost(u,v) < v.dist
        v[dist] = u.dist + cost(u,v)
        v[prev] = u
        pq.insert(distance + distance_to_neighbor, neighbor)
      end
    end

  end



end
