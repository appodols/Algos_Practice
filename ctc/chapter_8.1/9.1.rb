


def merge_helper(a,b, a-last, b-last)
  index_b = b-last - 1
  index_a = a-last - 1
  index_merged = (a-last + b-last -1)
    until index_b.zero
      if(a[index_a] > b(index_b))
        a[index_merged] = index_a
        index_a -= 1
      else
        b[index_merged] = index_b
        index_b -= 1
      end
      index_merged -= 1
    end
  return a
end
