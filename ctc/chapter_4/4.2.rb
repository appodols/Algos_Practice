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
