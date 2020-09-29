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
  cart_index = 0
  new_item = find_item_by_name_in_collection(cart[cart_index][:item], tidy_cart)
  cart.each do |hash|
    tidy_cart_index = 0
    tidy_cart.each do |item_to_add|
      if item_to_add[:item] == new_item[:item]
        item_to_add[:count] += 1
      end
      tidy_cart_index +=1
    end
    binding.pry
  end
    else
      new_item = {
        :item => cart[index][:item],
        :price => cart[index][:price],
        :clearance => cart[index][:clearance],
        :count => 1
      }
      tidy_cart << new_item
    end
    index += 1
  end
  tidy_cart
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
