require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  i = 0 
  while i < collection.size 
    if collection[i][:item] == name 
      return collection[i]
    end 
    i += 1 
  end 
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  consolidated_cart = []
  i = 0 
  while i < cart.length 
    new_cart_item = find_item_by_name_in_collection(cart[i][:item], consolidated_cart)
      if new_cart_item != nil 
        new_cart_item[:count] += 1 
      else 
        new_cart_item = {
          :item => cart[i][:item].
          :price => cart[i][:price],
          :clearance => cart[i][:clearance],
          :count => 1 
        }
        consolidated_cart << new_cart_item
      end 
    i += 1 
  end 

  