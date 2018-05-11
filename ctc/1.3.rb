#questions
  #1 does each space correspond to %20 or each consecutive space
  #what is the 13 for?

def URLify(str)
  words = str.split(" ")
  words.join("%20")
end






#run time / space complexity
#O(n), #O(1)
