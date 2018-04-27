class Node
  attr_accessor :data, :left, :right

  def initialize(data, left = nil, right = nil)
    @data = data
    @left = left
    @right = right
  end

  def addLeft(data)
    to_add = Node.new(data)
    @left = to_add
  end

  def addRight(data)
    to_add = Node.new(data)
    @right = to_add
  end
end

class BST
  attr_accessor :root

  def initialize(value = nil)
    @root = Node.new(value)
  end

  def insert(node, toInsert)
    if node.data == toInsert
      return node
    end

    if toInsert < node.data
      if(node.left.nil?)
        node.addLeft(toInsert)
      else
        insert(node.left, toInsert)
      end
  else
    if(node.right.nil?)
      node.addRight(toInsert)
    else
      insert(node.right, toInsert)
    end
end
