class LRU
  require_relative 'doubly_linked_list'
  require_relative 'hash_map'

  attr_accessor :head, :tail, :num_items, :max_items

  def initialize(max_size)
    @max = max
    @map = HashMap.new
    @size = 0
    @linked_list = LinkedList.new
    @prc = prc
  end

  def get(key)
    if map[key]
      node = map[key]
      update_node!(node)
      node.val
    else
      set!(key)
    end
  end

  def set!(key)
    val = @prc.call(key)
    new_node = @linked_list.insert(key, val)
  end

  def update_node(node)
    node.remove
    map[node.key] = @linked_list.insert(key,val)
  end

  def eject
    to_return = @linked_list.head
    @linked_list.delete(to_return)
    map[to_return.key] = nil
    nil
  end




end
