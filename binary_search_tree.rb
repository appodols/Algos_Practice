class Node
  attr_accessor :data, :left, :right, :parent

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
    @parent = nil
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

  def remove_child(node)
    data = node.data
    @left = nil if @left.data == data
    @right = nil if @right.data == data
  end

  def has_children?
    !!(@left || @right)
  end

end

class BST
  attr_accessor :root

  def initialize(data = nil)
    @root = Node.new(data)
  end


  def inserts(args)
    args.each{|arg| self.insert(@root, arg)}
    nil
  end


  def insert(node, toInsert)
      if (node.data) && (node.data == toInsert)
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



def find(node = @root, toFind)
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

  def remove_data(data)
    to_Remove = self.find(data)
    self.remove_node(to_Remove)
  end


  def remove_node(node)
    if !node.has_children?
      node.parent.remove_child(node)
    elsif (node.left && !node.right)
        if node.parent.left == node
          node.parent.left = node.left
        else
          node.parent.right = node.left
        end
    elsif (node.right && !node.left)
        if(node.parent.left == node)
          node.parent.left = node.right
        else
          node.parent.right = node.right
        end
    else
      nextNode = successor(node)
      node.data = nextNode.data
      remove(nextNode)
      #the reason this works id that the next Node is the successor which is
      #the furthest left child which by definiton doesn't have a right child
    end

  end


def successor(node)
  curr = node.right
  while(curr.left != nil)
    curr = curr.left
  end
  #this method iterates through the tree to find the left most node
end






end
