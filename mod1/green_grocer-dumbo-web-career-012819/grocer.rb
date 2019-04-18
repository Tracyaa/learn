require 'pry'

def consolidate_cart(cart)
  count_hash = {}
  # count = 1
  cart.each do |item|
    item.each do |name, name_hash|
      count_hash[name] = name_hash
      count_hash[name][:count] = cart.count(item) # item = ({"AVOCADO"=>{:price=>3.0, :clearance=>true}}
    end
  end
  count_hash
end

def apply_coupons(cart, coupons)
  cart.each do |item, item_hash|
    if coupons[:item] == item
      item_hash[:count] -= coupons[:num]
      binding.pry
      cart[item "W/COUPON"] = {:price => coupons[:cost], :clearance => item_hash[:clearance, :count => 1]}
    end
  end
  cart
end
puts "hello"

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
