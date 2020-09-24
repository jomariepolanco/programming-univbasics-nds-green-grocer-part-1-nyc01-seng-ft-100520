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
  while i < cart.size 
    count_cart = cart.each_with_object(Hash.new(0)) do |o, h| 
      h[o] += 1
    end
    consolidated_cart = cart.uniq 
    consolidated_cart[i][:count] = count_cart.values[i]
    i += 1 
  end 
  consolidated_cart
  end 


  