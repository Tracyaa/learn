def reverse_each_word(str)
  # arr = str.split
  # reversed = []
  # arr.each {|word| reversed << word.reverse}
  str.split.collect {|word| word.reverse}.join(" ")
  # return reversed.join(" ")
end
