
#questions
  #is this a singly linked_list or a doubly_linked_list
def delete_middle_node(node)
  currNode = linked_list.head
  while(currNode)
    if(currNode.next.data == node.data)
      currNode =  currNode.next.next
      return linked_list
    end
    currNode = currNode.next
  end
  nil
end
