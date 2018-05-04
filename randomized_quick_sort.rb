


def randomized_quick_sort(arr)

  if arr.length < 1
    return arr
  end

  pivot = arr[pivot_index(arr)]
  arr = swap(pivot_index)
  less = []
  equal = []
  greater = []

  arr.each do |x|
    if x < pivot
      less << x
    elsif x > pivot
      greater << x
    else
      equal << x
    end
    return randomized_quick_sort(less) + equal + randomized_quick_sort(greater)
  end
end
