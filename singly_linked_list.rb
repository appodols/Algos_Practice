class Node
  attr_accessor :value, :next

  def initialize(data)
    @value = value
    @next = nil
  end
end

class LinkedList

  attr_accessor :head


  def initialize(data)
    @head = nil
    # in this implementation head is literally set equal to a certain node, rather than its own separate node that points to something
  end

  def insertNode(index, data)
    return nil if index < 0
    currIndex = 1
    currNode = head

    while(currNode && index > currIndex)
      currNode = currNode.next
      currIndex += 1
    end

    return nil if(index > 0 && currNode == nil)

    to_insert = Node.new(data)

    if(index.zero?)
      to_insert.next = head;
      @head = newNode;
    else
      newNode.next = currNode.next
      currNode.next = newNode
    end

  end




end
