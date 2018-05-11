#Questions
# 1) Is the string ASCII or unicode

def is_unique(str)
  return false if str.length >= 26
  counter = Hash.new(0)
  str.each_char do |c|
    return false if counter[c] >= 1
    counter[c] += 1
  end
  true
end
#Run time / space complexity
#run time complexity is O(n), space complexity is O(1), because we will be
#tracking a constant amount of keys
