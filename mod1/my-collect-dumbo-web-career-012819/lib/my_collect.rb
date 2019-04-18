def my_collect(arr)
  result = []
  i = 0
  while i < arr.length
    yield arr[i]
    if arr[i].split.length == 1
      result << arr[i].upcase
    else
      result << arr[i].split.first
    end
    i += 1
  end
  result
end
