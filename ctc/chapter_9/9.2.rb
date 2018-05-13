
def anagram_sorter(arr)
  arr.sort do |a,b|
    a.split("").sort! <=> b.split("").sort!
  end
end
