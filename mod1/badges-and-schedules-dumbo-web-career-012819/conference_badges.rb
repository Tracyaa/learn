def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(arr)
  badge_arr = []
  arr.each {|name| badge_arr << badge_maker(name)}
  return badge_arr
end

def assign_rooms(arr)
  list = []
  # for i in (0...arr.length)
  #   list << "Hello, #{arr[i]}! You'll be assigned to room #{i+1}!"
  # end
  arr.each_with_index {|name, i| list << "Hello, #{name}! You'll be assigned to room #{i+1}!"}
  return list
end

# <<<<<<< HEAD
def printer(arr)
  batch_badge_creator(arr).each {|ele| puts ele}
  assign_rooms(arr).each {|ele| puts ele}
# =======
# def printer
#   prints = []
#   arrOne = batch_badge_creator(arr)
#   arrTwo = assign_rooms(arr)
#   for i in (0...arrOne.length)
#     # puts arrOne[i]
#     # puts arrTwo[i]
#     prints << arrOne[i]
#     prints << arrTwo[i]
#   end
#   puts prints
# >>>>>>> 90be1fdc8a201cf51531ef9ad88f632e9e90b647
end
