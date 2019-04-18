def prime?(num)
  if num < 2
    return false
  elsif num == 2
    return true
  end

  for i in (2...num)
    if num % i == 0
      return false
    end
  end

  return true
end
