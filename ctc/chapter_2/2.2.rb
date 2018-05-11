
#questions--is this a singly linked list?
#should I return error messages if k > length of array
#do I have access to linked_list or should I take in a linked list?

def return_kth_last(k)
    currNode = linked_list.head
    k.times{|i| currNode = currNode.next}
    return "error" if currNode.nil?
    to_return = linked_list.head
    while(!currNode)
      currNode = currNode.next
      to_return = to_return.next
    end
    to_return
  #1 we could use multiple p
end
