def selection_sort(arr)

  (0..arr.length-1).each do |i|
    min = i
    (i+1..arr.length-1).each do |j|
      if arr[j] < arr[min]
        temp = arr[j]
        arr[j] = a[min]
        arr[min] = temp
    end
  end
  arr
end
