


def binary_search(arr, target)
  return false if arr.length.zero?
  return (arr[0] == target) if arr.length == 1

  mid = arr.length / 2

  return true if x == arr[mid]
  return binary_search(arr[mid+1..-1], target) if x > arr[mid]
  return binary_search(arr[0..mid-1], target) if x < arr[mid]
end
