// JavaScript Olympics

// I paired with Lydia Nash on this challenge.

// This challenge took me 1 hours.


// Warm Up




// // Bulk Up
var win = function(athlete, event) {
  console.log(athlete + " won the " + event +"!");
}

console.log(win("Sarah Hughes", "Ladies Singles"))
*/

// Jumble your words

function jumble(word) {
  return word.split("").reverse().join("");
}

console.log(jumble("something"))


// //2,4,6,8

function evens(numbers) {
  var empty = []
  for (var i = 0; i < numbers.length; i++) {
   if (numbers[i] % 2 === 0) {
     empty.push(numbers[i]);
   }
  }
  console.log(empty);
}

// function evens(numbers) {
//   var arrayLength = numbers.length
//   for (var i = 0; i < arrayLength; i++) {
//    if (numbers[i] % 2 != 0) {
//      numbers.splice(i);
//      arrayLength-=1;
//    }
//   }
//   console.log(numbers);
// }

console.log(evens([2,4,3,5,7,8,12,33]))

// "We built this city"
function Athlete (name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

/* Reflection
What JavaScript knowledge did you solidify in this challenge?
I definitely solidified some knowledge about function definitions as well as became more comfortable overall with JS syntax.  I also refreshed how to use a for loop which seems super helpful.

What are constructor functions?
They seem basically the same as class definitions in Ruby.  They allow you to define a variable with some arguments then run a constructor function on that variable to create what is essentially a class.

How are constructors different from Ruby classes (in your research)
Besides the differences in syntax and general mechanics, it seems like the constructor isn't necessarily tied to a class.  The constructor can give properties to any object created with the constructor, which can be class-wide, or specific to each instance.  So I guess you could use the constructor to give properties to an entire class of objects but then also use that same constructor function to give the same properties to a difference instance of an object of a different class.  I have a feeling I'll have to read these articles a few times in order to fully understand.
*/