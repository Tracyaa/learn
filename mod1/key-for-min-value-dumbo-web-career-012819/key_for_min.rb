# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash == {}
    return nil
  end
  smallest = nil
  lowest_item = nil
  name_hash.each do |name, num|
    if smallest == nil || num < smallest
      smallest = num
      lowest_item = name
    end
  end
  return lowest_item
end
