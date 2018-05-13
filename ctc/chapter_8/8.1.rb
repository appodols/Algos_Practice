


def nth_fibonacci(numbers = [0, 1], n)
  return -1 if n < 1
  return numbers[n-1] if numbers.length >= n
  return nth_fibonacci(n-1) + nth_fibonacci(n-2)
end
