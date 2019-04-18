def begins_with_r(arr)
  arr.each {|word| return false if word[0] != "r"}
  return true
end

def contain_a(arr)
  arr.select {|word| word.include?("a")}
end

def first_wa(arr)
  arr.find {|word| word[0..1] == "wa"}
end

def remove_non_strings(arr)
  arr.delete_if {|ele| !(ele.class == String)}
end

def count_elements(arr)
# [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
# ([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}])
  names = []
  arr.each {|hash| names << hash[:name]}   # ["blake", "blake", "ashley"]
  result = []
  names.each {|name| names.count(name)}

end

# def merge_data(arrOne, arrTwo)
#   arrOne.flatten.concat(arrTwo.flatten)
# end
