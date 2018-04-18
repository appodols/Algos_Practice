class Node
  attr_reader :value
  attr_accessor :left, :right

  def initialize(value = nil)
    @value = value
    @left = nil
    @right = nil
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
      return node = Node.new(value)
    #difference between brown code--brown if the node is less than either of the children
    #first try inserting on left, then insert on left and call recursively
    #otherwise try inserting right / adding right
  end

  def find(node = @root, value)
     if node.value == value
       return node
     elsif (value < node.value && !!node.left)
       return find(node.left, value)
     elsif (value > node.value && !!node.right)
       return find(node.right, value)
     end
   return nil

  end




end
