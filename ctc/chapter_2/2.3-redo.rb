



def delete_middle_node(node)
  if(node.nil || n.next = nil)
    return false
  #because we will be using next pointers to delete the node, and so if it is a tail node
  #it will not work
  nex = node.next
  n.data = nex.next
  #by removing the pointers it gets automatically garbage collected
  return true
  end
end
