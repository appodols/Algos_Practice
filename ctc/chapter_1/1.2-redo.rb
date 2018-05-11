#questions
  # can I have spaces?
  # does capitalization matter?

  def is_permutation?(a,b)
    return false if a.length != b.length
    counter = Hash.new(0)
    a.each_char{|c| counter[c] += 1}
    b.each_char{|c| counter[c] -= 1}
    counter.each{|k,v| return false if v != 0}
    true
  end
