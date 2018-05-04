

def merge_sort(a)
  n = a.length
  return a if n <= 1
  mid = n/2
  left = merge_sort(a[0..mid-1])
  right = merge_sort(a[mid..-1])
  return merge(left, right)
end


def merge(left, right)
  merged = []
  while !left.empty? && !right.empty?
    if left.first < right.first
       merged << left.shift
    else
      merged << right.shift
    end
  end
  merged + left + right
end
