## Method to remove an item from the list
# input: item with default value of 1 [Stretch goal: remove either all of an item or a specific value/number]
# steps:
  # get item name and optional quantity from user
  # run the check method
  # remove item from list
# output: updated grocery list hash


## Method to update the quantity of an item
# input: item name and the additional amount of the item you want on the list in integer form
# steps:
  # get item name and additional quantity of item
  # run the check method
# output: updated grocery list hash
 # puts update_list(safeway_list, "bananas", 12)

## Method to print a list and make it look pretty
# input: grocery list hash
# steps:
  # No steps now [stretch goal: alphabetize the list, remove the square brackets]
# output: two column list with items on the right and quantity on the left


## Method that determines whether the item is in the list and if it isn't, it prints out an error message
# input: item name and the list hash
# steps:
  # get item name
  # IF the item name does not exist in the hash, puts "This item is not in your grocery list!"
# output: the error message or nothing

new_list = Hash.new

def new_item(list, item, quantity)
  list[item] = quantity
end

def remove_item(list, item)
  list.delete(item) if list[item]
end

def update_item(list, item, quantity)
  list[item] = quantity if list[item]
end

def print_list(list)
  puts "Grocery List:"
  list.each do |item, quantity|
    puts "#{quantity} #{item.capitalize}"
  end
end

my_list = new_list
new_item(my_list, "lemonade", 2)
new_item(my_list, "tomatoes", 3)
new_item(my_list, "onions", 1)
new_item(my_list, "ice cream", 4)
remove_item(my_list, "lemonade")
update_item(my_list, "ice cream", 1)
print_list(my_list)
=begin
What did you learn about pseudocode from working on this challenge?

From our guide, we learned it's better to keep the pseudocode concise and not overthink each step.  As long as the pseudocode is detailed enough to serve as a guide or thinking framework from which to write your actual code, the shorter/quicker the better.

What are the tradeoffs of using Arrays and Hashes for this challenge?

To me, I immediately thought of using a hash since we want a unique key/value pair of grocery item and quantity.  We could have used an array in theory, but it would have been more difficult to get the default integer key value to respond to changes in quantity.

What does a method return?

Methods return the value of their last statement/evaluation.
What kind of things can you pass into methods as arguments?

You can pass strings, integers, floats, arrays and hashes comprised of these three objects, or seemingly any number of other types of objects; anything that you want to use as a parameter or variable in your method.

How can you pass information between methods?

You can pass different information through parameters in your method definitions or you can set instance variables using (@) that are callable outside the method in which they are defined.

What concepts were solidified in this challenge, and what concepts are still confusing?

The hardest part for me is still the initial conceptualizating of the problem and steps needed to solve the problem.  The next hardest part is figuring out which methods are appropriate for which steps.  I also still have trouble remembering syntax and then refactoring.  It's hard to identify whic hpart is the most difficult but I am getting practice with all these steps and learning/solidifying my knowledge of useful methods.
=end





