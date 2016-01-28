/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.


var gradebook = {};


gradebook.Joseph = {};
gradebook.Susan = {};
gradebook.William = {};
gradebook.Elizabeth = {};


gradebook.Joseph.testScores = scores[0];
gradebook.Susan.testScores = scores[1];
gradebook.William.testScores = scores[2];
gradebook.Elizabeth.testScores = scores[3];

gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score)
}

var average = function(array) {
 var count = 0
 var y = 0

  for (var y = 0; y < array.length; y++)
  { count = count + array[y] }
   return count/array.length;
}

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
}


console.log(gradebook.getAverage("Joseph"))
console.log(gradebook.getAverage("Susan"))
console.log(gradebook.getAverage("William"))
console.log(gradebook.getAverage("Elizabeth"))


 console.log(gradebook.addScore("Susan", 80))
// __________________________________________
// Refactored Solution
var gradebook = {};

for (var i =0; i < scores.length; i++) {
  gradebook[students[i]] = {};
  gradebook[students[i]].testScores = scores[i];
}

var average = function(array) {
  var sum = array.reduce(function(a, b) { return a + b});
  return sum/array.length;
}

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
}


console.log(gradebook.getAverage("Joseph"))
console.log(gradebook.getAverage("Susan"))
console.log(gradebook.getAverage("William"))
console.log(gradebook.getAverage("Elizabeth"))
// __________________________________________
// Reflect

// In the reflection section in your gradebook.js file, answer the following questions:

// What did you learn about adding functions to objects?
// Functions are added pretty easily and in a similar way as properties.  You can also use functions to add and manipulate the existing properties of objects.

// How did you iterate over nested arrays in JavaScript?
//Initially we did this manually, referencing each nested array with its proper index number.  But, in the refactoring we used a for loop and an i stand-in for the index numbers.  With the average function we again used a stand in and for loop but then refactored using the built-in method .reduce.
// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
//We used the .reduce method on the array in the average function.  The .reduce method is called on the object you want to manipulate, then takes two arguments whose names are arbitrary but represent the previous value of the array and the current.  Then, you define a function of what you want to do to those two curr/prev values, which, in this case was to simply add them.  It loops through the array and adds all of the values together, then we returned that value set to a variables 'sum' divided by the length of the array.  This gave us the average.










// __________________________________________
// Test Code:  Do not alter code below this line.


// function assert(test, message, test_number) {
//   if (!test) {
//     console.log(test_number + "false");
//     throw "ERROR: " + message;
//   }
//   console.log(test_number + "true");
//   return true;
// }



// assert(
//   (gradebook instanceof Object),
//   "The value of gradebook should be an Object.\n",
//   "1. "
// )

// assert(
//   (gradebook["Elizabeth"] instanceof Object),
//   "gradebook's Elizabeth property should be an object.",
//   "2. "
// )

// assert(
//   (gradebook.William.testScores === scores[2]),
//   "William's testScores should equal the third element in scores.",
//   "3. "
// )

// assert(
//   (gradebook.addScore instanceof Function),
//   "The value of gradebook's addScore property should be a Function.",
//   "4. "
// )

// gradebook.addScore("Susan", 80)

// assert(
//   (gradebook.Susan.testScores.length === 5
//    && gradebook.Susan.testScores[4] === 80),
//   "Susan's testScores should have a new score of 80 added to the end.",
//   "5. "
// )

// assert(
//   (gradebook.getAverage instanceof Function),
//   "The value of gradebook's getAverage property should be a Function.",
//   "6. "
// )

// assert(
//   (average instanceof Function),
//   "The value of average should be a Function.\n",
//   "7. "
// )
// assert(
//   average([1, 2, 3]) === 2,
//   "average should return the average of the elements in the array argument.\n",
//   "8. "
// )

// assert(
//   (gradebook.getAverage("Joseph") === 80),
//   "gradebook's getAverage should return 80 if passed 'Joseph'.",
//   "9. "
// )
