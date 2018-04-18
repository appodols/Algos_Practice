class Node
  attr_reader :value
  attr_accessor :left, :right, :parent

  def initialize(value = nil, parent = nil)
    @value = value
    @left = nil
    @right = nil
    @parent = parent
  end

  def has_children?
    left.nil? && right.nil?
  end

  def set_parent(parent)
    @parent = parent
  end



end

class BinarySearchTree
  attr_accessor :root

  def initialize(value = nil)
    @root = Node.new(value)
  end

  def insert(node, value)
    if node.value == value
      return node
    elsif value < node.value
      insert(node.left, value)
    elsif value > node.value
      insert(node.right, value)
    else
      parent = node
      node = Node.new(value, parent)
    end
    #difference between brown code--brown if the node is less than either of the children
    #first try inserting on left, then insert on left and call recursively
    #otherwise try inserting right / adding right

    #questions...where how do we do this setting parents references?
  end

  def find(node = @root, value)
     if node.value == value
       return node
     elsif (value < node.value && !!node.left)
       return find(node.left, value)
     elsif (value > node.value && !!node.right)
       return find(node.right, value)
     end
     nil
 end

 #starts searching on a node...could be the root, but could be anything
 # if the node is less than the node we are looking for must be in the left of the tree so we recursively call it over again
 #


#3 cases here...1)

  def successor(node)
    curr = node.right
    while(!curr.left.nil)
      curr = curr.left
    end
    curr
  end

#will go to right sub tree and then get left most node to ensure minimum largest value


  def remove(node)
    if !node.has_children?
      node = nil
    elsif node.left && !node.right


  end





end
