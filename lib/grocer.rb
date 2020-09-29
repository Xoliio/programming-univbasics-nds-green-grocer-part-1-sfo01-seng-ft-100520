require "pry"

def find_item_by_name_in_collection(name, collection)
  collection.each do |hash|
    if name == hash[:item]
      return hash
    end
  end
  return nil
end

def consolidate_cart(cart)
  tidy_cart = []
  index = 0
  cart.each do |hash|
    binding.pry
    
  end
end

  # while index < cart.length
  #   new_item = find_item_by_name_in_collection(cart[index][:item], tidy_cart)
  #   if tidy_cart.include? new_item
  #     new_item[:count] += 1
  #   else
  #     new_item = {
  #       :item => cart[index][:item],
  #       :price => cart[index][:price],
  #       :clearance => cart[index][:clearance],
  #       :count => 1
  #     }
  #     tidy_cart << new_item
  #   end
  #   index += 1
  # end
  # tidy_cart
  #end
