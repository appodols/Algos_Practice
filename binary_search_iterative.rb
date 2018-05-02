


def binary_search(a,x)
  lo = 0
  hi = a.size - 1
  while(lo < hi)
    mid = (lo + hi) / 2
    if(a[mid] == x)
      return true
    elsif(a[mid] < x)
      lo = mid + 1
    elsif(a[mid] > x)
      hi = mid - 1
    end

  end

  return (lo == x)


end


#how does this work exactly?
#it continues moving the lo and the hi points closer together based on then
#findings in the graph

#if lo is greater than high, that means we have looked through all the information
#it then returns whether or not lo == x
