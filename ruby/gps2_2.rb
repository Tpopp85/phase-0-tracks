
# Method to print a list and make it look pretty
# input: list
# steps: print grocery list message, iterate through hash
# output: returns name of item and quantity

def format_list(list)
  puts "Your grocery list:"
  list.each do |key, value|
    puts "#{key}: #{value}"
  end
end

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split string to induvidual components
#   Iterate through items
  # set default quantity, add to the hash
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def groceries(string)
  list = {}
  string.split(" ").each do |item|
    list[item] = 1
  end
  format_list(list)
  list
end
grocery_list = groceries("pizza carrots tomatoes candy")
# Method to add an item to a list
# input: item name and optional quantity
# steps: allow method to take argument for item and quantity
# output: returns updated list
def add_item(list, item, quantity = 1)
  list[item] = quantity
  list
end
# print add_item(grocery_list, "apple")
# Method to remove an item from the list
# input: get name of item
# steps: call delete method
# output: return updated list

def remove_item(list, item)
  list.delete(item)
  list
end
# p remove_item(grocery_list, "pizza")

# Method to update the quantity of an item
# input: list, name of item, and new quantity
# steps: see if the list includes the item, update the quantity of that item
# output: returns updated list
def update_quantity(list, item, quantity)
  list[item] = quantity
  list
end
#p update_quantity(grocery_list, "carrots", 5)

