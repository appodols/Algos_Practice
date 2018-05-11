def replace_spaces(str, true_length)
  space_count = 0
  str = str.split("")
  str.each{|c| space_count += 1  if c == " "}
  index = space_count + true_length
  str[true_length] = '\0' if(true_length < str.length)
  (true_length).downto(0).each do |i|
    if str[i] == " "
      str[index-1] = '0'
      str[index-2] = "2"
      str[index-3] = "%"
    else
      str[index-1] = str[i]
    end
  end
  str
end
