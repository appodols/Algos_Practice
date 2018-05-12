def create_level_linked_list(root, lists, level)
  if(root.nil) return
  list = nil
  if(lists.size == level)
    #we know list is not contained
    list = LinkedList.new
    lists.add(list)
  else
    list = lists[level-1]
  end
  list.add(root)
  create_level_linked_list(root.left, lists, level+1)
  create_level_linked_list(root.right, lists, level+1)
end



def createLevelLinkedList(root)
  result = []
  current = LinkedList.new
  if(!root)
    current.add(root)
  while(current.size > 0)
    result.add(current)
    parents = current
    current = LinkedList.new
    parents.each do |parent|
      if(!parent.left.nil?)
        current.add(parent.left)
      end
      if(!parent.left.nil?)
        current.add(parent.right)
      end
    end
  end
  result
end
