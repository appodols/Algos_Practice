



def binary_search_rotated(arr, l = 0, u = arr.length-1, target)

  while(l <= u)]
    m = l + (r-l/2)
    return m if(a[m] == key)
      if a[l] <= a[m]
        if(a[l] <= key && key < a[m])
          u = m- 1
        else
          l = m + 1
        end
      else
        if(a[m] < target && target <= a[r])
          l = m + 1
        else
          r = m - 1
        end
    end
  end
  -1
end
