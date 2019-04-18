def line(arr)
  if arr.length == 0
    puts "The line is currently empty."
  else
    str = "The line is currently:"
    arr.each_with_index {|name, i| str += " #{i+1}. #{name}"}
    puts str
  end
end

def take_a_number(arr, name)
  arr.push(name)
  puts "Welcome, #{name}. You are number #{arr.length} in line."
end

def now_serving(arr)
  if arr.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving Logan."
    arr.shift
  end
end
