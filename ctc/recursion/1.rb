##Given a string, print all possible palindromic partitions



def delete_kth_node(LinkedList, node = LinkedList.head, k, c = 0)
  return LinkedList if node.next.nil?
  if(c+1 == k)
    nex = node.next.next
    nex.prev = node
    node.next = nex
    ##in Java we would delete current node delete node.next
  end
  delete_kth_node(LinkedList, node.next, k, c+1)
end

def delete_kth_node(node, k)
  #base case
  if(k < 1)
    return node
  end

  if start.nil?
    nil
  end

  if(k == 1)
    nex = start.next
    delete start
    return next
  end

  start.nex = deleteNode(start.nex, k-1)
  start

  #what is going on here?
  

end
