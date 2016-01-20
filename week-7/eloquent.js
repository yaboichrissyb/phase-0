// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var name = "Chris"
console.log(name + " is a cool guy.")
// => Chris is a cool guy.

var food = prompt("What's your favorite food?");
alert("Really? " + food + " is my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//FizzBuzz
for (var n = 1; n <= 100; n++) {
  var words = "";
  if (n % 3 == 0)
    words += "Fizz";
  if (n % 5 == 0)
    words += "Buzz";
  console.log(words || n);
}
// Functions
// Create a function value f
var f = function(a) {
  console.log(a + 2);
};

// Declare g to be a function
function g(a, b) {
  return a * b * 3.5;
}

// Complete the `minimum` exercise.
function min(a,b) {
  if (a < b)
    return a;
  else return b;
}

console.log(min(0, 1));
// → -10


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  age: 23,
  favFoods: ["Avocado", "Coffee", "Dirt"],
  quirk: "I can't swallow pills."
};

