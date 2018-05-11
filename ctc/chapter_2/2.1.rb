#questions
  #1 is the linked list singly or doubly linked?
  #2) by duplicates should I remove all duplicates or
  #3) all additional values beyond a single value?
  require_relative 'singly_linked_list'

  #assuming it is a singly linked list
  def remove_dups(linked_list)
    prevNode = nil
    currNode = linked_list.head
    nodes = Hash.new(0)
    while(!currNode)
      nodes[currNode.data] += 1
      if(nodes[currNode.data] >= 1)
        prevNode.next = currNode.next
        currNode = currNode.next
      else
        prevNode = currNode
        currNode = currNode.next
      end
    end
    linked_list
  end

#O(N) time
def remove_dups(linked_list)
  while(!currNode)
    runner = currNode.next
    while(!runner)
      if(runner.next.data == currNode.data)
        runner.next = runner.next.next
      else
        runner = runner.next
      end
    end
    currNode = currNode.next
  end
end
