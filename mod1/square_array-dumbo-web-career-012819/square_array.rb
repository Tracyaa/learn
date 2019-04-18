def square_array(array)
  newArr = []
  array.each {|num| newArr << num**2}
  # array.collect {|num| num ** 2}
  return newArr
end
