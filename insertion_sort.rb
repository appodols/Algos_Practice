def insertion_sort(arr)
  length = arr.length

  (0..length-1).each do |i|
    (i+1).downto(0).each do |j|
      if(a[j] < a[i])
        temp = a[j]
        a[j] = a[i]
        a[i] = temp
      end
    end
arr
end
