require "pry"

def find_item_by_name_in_collection(name, collection)
  collection.each do |hash|
    if name == hash[:item]
      return hash
    end
  end
  return nil
end

def consolidate_cart(messy_cart)
  tidy_cart = []
  messy_index = 0
  new_item = find_item_by_name_in_collection(messy_cart[messy_index][:item], tidy_cart)
  messy_cart.each do |item_hash|
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
