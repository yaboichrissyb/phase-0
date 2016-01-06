# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create a hash
  # captures the items, split the string into multiple strings delimited by a space
  # set default quantity
  # print the list to the console [can you use one of your other methods here?] VISIT THIS AT THE END
# output: hash with the item name and the default value 1

def create_a_list(items)
  grocery_hash = Hash.new
  items.split.each { |x| grocery_hash[x] = 1}
  return grocery_hash
end
puts create_a_list("carrots apples bananas oranges milk")

# Method to add an item to a list
# input: item name and optional quantity (enters default value if not given)
# steps:
  # Get item name and optional quantity from user
  # run the check method
  # Add the new item and quantity to the original hash
# output: updated hash with new data
#def add_item(list, item, quantity=1)
 # list =
#end
things_from_safeway = "carrots apples bananas oranges milk"
safeway_list = create_a_list(things_from_safeway)
#puts add_item(safeway_list, item)



# Method to remove an item from the list
# input: item with default value of 1 [Stretch goal: remove either all of an item or a specific value/number]
# steps:
  # get item name and optional quantity from user
  # run the check method
  # remove item from list
# output: updated grocery list hash
#puts remove_item(safeway_list, "milk")

def remove_item(safeway_list, items)
  safeway_list.delete(items)
  return safeway_list
end


puts remove_item(safeway_list, "milk")

# We see that the list prints out twice (once with the milk, once without), but weren't sure how to fix

# Method to update the quantity of an item
# input: item name and the additional amount of the item you want on the list in integer form
# steps:
  # get item name and additional quantity of item
  # run the check method
# output: updated grocery list hash
 # puts update_list(safeway_list, "bananas", 12)

# Method to print a list and make it look pretty
# input: grocery list hash
# steps:
  # No steps now [stretch goal: alphabetize the list, remove the square brackets]
# output: two column list with items on the left and quantity on the right
#print_list(safeway_list)

# Method that determines whether the item is in the list and if it isn't, it prints out an error message
# input: item name and the list hash
# steps:
  # get item name
  # IF the item name does not exist in the hash, puts "This item is not in your grocery list!"
# output: the error message or nothing
#puts check_list(safeway_list, "apple") # => should return either an error or nothing

