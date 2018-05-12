def minimal_tree_helper(arr)
  inserts = []
  median = arr.length/2
  inserts.push(arr[median])
  distance = 0
  while true
    distance += 1
    left = median - distance
    right = median + distance
    left_contained = !(left < 0)
    right_contained = !(right > arr.length-1)
    if(!left_contained && !right_contained)
      break
    else
        inserts.push(arr[left]) if left_contained
        inserts.push(arr[right]) if right_contained
    end
  end
  inserts
end

def inserts(arr, bs)
  inserts = minimal_tree_helper(arr)
  inserts.each{|insert|, bs.insert(insert) }
end


def createMinimalBST(arr, start, end)
  if(end < start)
    return nil
  #why is this the recursive condition?
  #because there is no range
  mid = (start + end)/2
  node = Node.new(arr[mid])
  n.left = createMinimalBST(arr,start,mid-1)
  n.right = createMinimalBST(arr,mid+1, end)
  return node
end




end
