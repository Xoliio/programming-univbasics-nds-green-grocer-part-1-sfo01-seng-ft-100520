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
  index = 0
  tidy_cart = []
  while index < messy_cart.length
    new_item = find_item_by_name_in_collection(messy_cart[index][:item], tidy_cart)
    if tidy_cart.include? new_item
      new_item[:count] += 1
    else
      new_item = {
        :item => messy_cart[index][:item],
        :price => messy_cart[index][:price],
        :clearance => messy_cart[index][:clearance],
        :count => 1
      }
      tidy_cart << new_item
    end
    index += 1
  end
  tidy_cart
end
