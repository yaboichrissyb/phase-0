/* Release 1: User Stories
I want the ability to create a new list
I want to be able to add a new item with corresponding quantity to that list
I want to be able to remove any existing items from that list
I want to be able to update the quantities of existing items
I want to be able to print out a nice looking list
*/

/* Release 2: Pseudocode
-input:item, quantity
-output: formatted grocery list with items and quantities

-create blank groceryList object
-create addItem prototype that takes item and quantity, PRINT message to console.
-create removeItem prototype taht takes item argument and removes from list object
  -IF item exists in list, remove
  -ELSE throw error message
-create updateItem prototype that takes item and quantity as arguments
  -IF item exists in list, updates with new quantity
  -ELSE returns error message
-create print prototype that prints out formatted list for each each item



*/
/*
function groceryList() {};

groceryList.prototype.addItem = function(item, quantity) {
  this[item] = quantity;
  console.log(quantity + " " + item + "(s) have been added to your list." );
};

groceryList.prototype.removeItem = function(item) {
  delete this[item];
  console.log(item + " has been removed from your list.");
};

groceryList.prototype.updateItem = function(item, quantity) {
  if (this.hasOwnProperty(item)) {
    this[item] = quantity;
    console.log("You have added " + quantity + " " + item + "(s) to your list.")
  }
  else {
    throw "You cannot update an item that is not already on your list.";
    }
};

groceryList.prototype.print = function() {
console.log("Your list contains");
for (var item in this) {
  if (typeof this[item] != 'function') {
    console.log("- " + this[item] + " " + item + "(s)");
  }
}
}
*/


function GroceryList() {
  this.list = {};
}

GroceryList.prototype.addItem = function (item, quantity) {
  this.list[item] = quantity;
  console.log(quantity + " of " + item + " has been added.");
}

GroceryList.prototype.removeItem = function (item) {
  delete this.list[item];
  console.log(item + " has been removed from the list.");
}

GroceryList.prototype.updateItem = function (item, quantity) {
  if (this.list.hasOwnProperty(item)) {
    this.list[item] = quantity;
    console.log("You have added " + quantity + " " + item + "(s) to your list.");
  } else {
    throw "You cannot update an item that is not already on your list.";
  }
}

GroceryList.prototype.print = function () {
  console.log("This list contains:");
  for (var item in this.list) {
    console.log("- " + this.list[item] + " of " + item);
  }
}

GroceryList.prototype.getList = function () {
  return this.list;
}

/*Reflection

What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
This definitely helped review the passing of information as well the object constructor and using 'this' for generic objects of the same class.

What was the most difficult part of this challenge?
Probably remembering how to write a for loop correctly that printed each item from the list.

Did an array or object make more sense to use and why?
An object, because then I could store paired objects within the list object instead of just an item and index number.
