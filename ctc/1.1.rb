def is_unique?(str)
  counter = Hash.new(0)
  str.each_char do |c|
    return false if counter[c] == 1
    counter[c] += 1
  end
true
end

#things to ask
#a) is this string ASCII or unicode
#b) if it is greater than the amount of unique_chars than we know it is not unqiue
#time complexity? is O(n), where O(n) is the length of the string
#space complexity is O(C) where c is the length of the amount of letter sin the set
