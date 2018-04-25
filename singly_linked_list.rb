class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

class LinkedList

  attr_accessor :head


  def initialize()
    @head = nil
    # in this implementation head is literally set equal to a certain node, rather than its own separate node that points to something
  end

  def insertNode(data, index = 0)
    return nil if index < 0
    currIndex = 1
    currNode = head

    while(currNode && index > currIndex)
      currNode = currNode.next
      currIndex += 1
    end

    return nil if(index > 0 && currNode == nil)

    new_node = Node.new(data)

    if(index.zero?)
      new_node.next = head;
      @head = new_node;
    else
      new_node.next = currNode.next
      currNode.next = new_node
    end

    new_node

  end


  def display_list
    currNode = head

    while(currNode)
      puts currNode.data
      currNode = currNode.next
    end

  end

  def find_node(data)
    currNode = head
    currIndex = 1
    while(currNode && currNode.data != data)
      currNode = currNode.next
      currIndex += 1
    end
    return currIndex if(currNode)
    0
  end


  def deleteNode(data)

    prevNode = nil
    currNode = @head

    currIndex = 1

    while(currNode && currNode.data != data)
      prevNode = currNode
      currNode = currNode.next
      currIndex += 1
    end

    if(currNode && prevNode)
      prevNode.next = currNode.next
      # in other languages we would explicitly use garabage collection here via deleting
    else
      head = currNode.next
      #
    end

    currIndex

  end



end
