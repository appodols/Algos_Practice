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

# Count recursively the total number of "abc" and "aba" substrings that appear in the given string.

def countABC(str)
  if(str.length == 3)
    return 1 if (str == "abc") || (str == "aba")
    return 0
  end
  first_three = str[0..2]
  if first_three = "abc" || first_three = "aba"
    return 1 + countABC(str[3..-1])
  else
    return 0 + countABC(str[1..-1])
  end
end



#8.1 ctc

def triple_step(n)
  return 1 if n == 0
  return 1 = triple_step(n-1) if n == 1
  return triple_step(n-1) + triple_step(n-2) + triple_step(n-3)
end

def triple_step_memoization(answers = {})
  return 1 if n == 0
  return 1 = triple_step(answers, n-1) if n == 1
  one_step = triple_step(answers, n-1) if answers[n-1].nil?
  two_step = triple_step(answers, n-2) if answers[n-2].nil?
  three_step = triple_step(answers, n-3) if answers[n-3].nil?
  answer = one_step + two_step + three_step
  answers[n] = answer
  return answer
end

def middle_linked_list(List, first_node = list.head, second_node = list.head)
  first_node = list.head
  second_node = list.head
  return first_node if second_node.next.nil?
  first_node = first_node.next
  second_node = second_node.next.next
  return second_node if second_node.next.nil?
  middle_linked_list(list, first_node, second_node)
end
