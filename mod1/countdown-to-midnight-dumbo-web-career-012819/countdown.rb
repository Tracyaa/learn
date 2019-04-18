#write your code here

def countdown(num)
  i = num
  while i > 0
    puts "#{i} SECOND(S)!"
    i -= 1
  end
  return "HAPPY NEW YEAR!"
end

def countdown_with_sleep(num)
  while num > 0
    puts "#{num} SECOND(S)!"
    sleep(1) # pause for 1 second
    num -= 1
  end
  return "HAPPY NEW YEAR!"
end
