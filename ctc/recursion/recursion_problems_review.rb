#1. 5. Find Greatest Common Divisor (GCD) of 2 numbers using recursion.

# We have bunnies standing in a line, numbered 1, 2, ... The odd bunnies (1, 3, ..) have the normal 2 ears. The even bunnies (2, 4, ..) we'll say have 3 ears, because they each have a raised foot. Recursively return the number of "ears" in the bunny line 1, 2, ... n (without loops or multiplication).
#
# bunnyEars2(0) → 0
# bunnyEars2(1) → 2
# bunnyEars2(2) → 5



def bunnyEars2(n)
  return 0 if n == 0
  return 2 + bunnyEars2(n-1)
  return 3 + bunnyEars2(n-1) if n.even?
end



# Given a non-negative int n, return the count of the occurrences of 7 as a digit, so for example 717 yields 2. (no loops). Note that mod (%) by 10 yields the rightmost digit (126 % 10 is 6),
# while divide (/) by 10 removes the rightmost digit
#   (126 / 10 is 12).

def count7(int)
  if( int < 10)
    if int == 7
      return 1
    else
      return 0
    end
  end
  right_most = int % 10
  right_most == 7 ? 1 + count7(int / 10) : 0 + count7(int / 10)
end
