#questions
# Are the strings unicode, or ASCII
# could a partial permutation count?
# can I have blank spaces, does capitalization matter, ecetera
def check_permutations(a,b)
  counter = Hash.new(0)
  a.each_char{|c| counter[c] += 1}
  b.each_char{|c| counter[c] -= 1}
  counter.each{|k,v| return false if !v.zero?}
  true
end

#also think--premature optimization, we can use lengths to figure out if words are not the same length



#run time / space complexity
#O(1) because it is letter based
#runtime is O(n) because we are going through max all the entries in the hash
#which is max O(a + b)
