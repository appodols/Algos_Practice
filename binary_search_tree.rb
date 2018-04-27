class Node
  attr_accessor :data, :left, :right, :parent

  def initialize(data, left = nil, right = nil, parent = nil)
    @data = data
    @left = left
    @right = right,
    @parent = parent
  end

  def addLeft(data)
    to_add = Node.new(data)
    to_add.parent = self
    @left = to_add
  end

  def addRight(data)
    to_add = Node.new(data)
    to_add.parent = self
    @right = to_add
  end

  def remove_child(data)
    @left = nil if @left.data == data
    @right = nil if @right.data == data
  end

  def has_children?
    !!(@left || @right)
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
  end

def find(node, toFind)
  if(node.data == toFind)
    return node
  elsif (toFind < node.data && !node.left.nil?)
    return find(node.left, toFind)
  elsif (toFind > node.data && !node.right.nil?)
    return find(node.right, toFind)
  else
    nil
  end
end

def remove(node)
  if !node.has_children
    node.parent.removeChild(node)
  end

end







end
