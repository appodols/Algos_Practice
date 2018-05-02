class Node

  attr_accessor :value, :next
  def initialize( value = nil)
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
      @root = put_helper(@root, key, value, 0)
    end

    def put_helper(node, key, val, d)
      node = Node.new() if(node.nil?)
      if(d == key.length)
        node.value = val
        return node
      end
      c = key[d].ord
      node.next[c] = put_helper(node.next[c], key, val, d+1)
      return node;
    end


    def contains(key)
      return get(key).nil?
    end


    def get(key)
      to_return = get_helper(@root, key, 0)
      return nil if to_return.nil?
      return to_return.value
    end

    def get_helper(node, key, d)
      return nil if node.nil?
      return node if d == key.length
      c = key[d].ord
      return get_helper(node.next[c], key, d+1)
    end


end
