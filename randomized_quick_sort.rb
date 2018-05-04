


def randomized_quick_sort(arr)
  if arr.length < 1
    return arr
  end
  pivot = arr[pivot_index(arr)]
  arr = swap(arr,pivot_index)
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

def swap(arr, pivot_index)
  arr[pivot_index], arr[-1] = arr[-1], arr[pivot_index]
  arr
end

def pivot_index(arr)
  return 1 + rand(arr.length) if arr.length < 3
  indices = []
  3.times{|i| indices << 1 + rand(arr.length)}
  indices.sort[1]
end
