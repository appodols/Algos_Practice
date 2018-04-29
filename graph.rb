class Graph

  attr_accessor :vertices, :graph

  def initialize(vertices)
    @vertices = vertices
    @graph = {}
    @vertices.each{|vertice| @graph[vertice] = Array.new }
    #possible that this all maps into one area of memory
  end

  def add_edge(v,w)
    @graph[v] = @graph[v] << w
    @graph[w] = @graph[w] << v
  end

  def iterable(v)
    @graph[v]
  end

end
