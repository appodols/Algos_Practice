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
