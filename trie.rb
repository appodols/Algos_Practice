class Node

  attr_accessor :value, :next
  def initialize(value)
    @value = value
    @next = {}
  end


end


class Trie

  attr_reader :size, :root

    def initialize
      @size = 0
      @root = Node.new("")
    end

    def put(key, value)
      root = put_helper(root, key, value, 0)
    end

    def put_helper(node, key, val, d)
      node = new Node() if(node.nil?)
      if(d == key.length)
        x.val = val
        return node
      end
      node.next[c] = put_helper(node.next[c], key, val, d+1)
      return node;
    end



end
