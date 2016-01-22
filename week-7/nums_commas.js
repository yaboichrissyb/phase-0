// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode



// Initial Solution




// Refactored Solution
function separateComma(x) {
  var numberArray = x.toString().split('');
  var arrayLength = (numberArray.length) - 3;

  while (arrayLength > 0) {
  numberArray.splice(arrayLength, 0, ",");
    arrayLength -= 3;
  }
  numberArray = numberArray.join('');
  console.log(numberArray);

}

console.log(separateComma(123785738))

// Your Own Tests (OPTIONAL)
// function assert(test, message, test_number) {
//   if (!test) {
//     console.log(test_number + "false");
//     throw "ERROR: " + message;
//   }
//   console.log(test_number + "true");
//   return true;
// }

// assert(
//   (numberArray instanceof Object),
//   "numberArray should be an array.",
//   "1. "
// )





/* Reflection
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
We actually approached it initially in a very similar way as how we had solved the identical Ruby challenge.  But, this turned out to be more challenging to implement in JS so we switched up our approach in the end.

What did you learn about iterating over arrays in JavaScript?
It's syntactically different, obviously, from Ruby but in some ways is a lot simpler.  I think with some practice I could come to like JS better in this area.

What was different about solving this problem in JavaScript?
Mostly the syntax and the types of methods we ended up using.  In some ways, it felt more straightforward than solving the challenge in Ruby, though this may be because we now have some background on the relevant concepts.

What built-in methods did you find to incorporate in your refactored solution?
We used split, splice and join, splice being the big one.  It took some reading to understand exactly how it worked and if it would do what we needed it to do, but with the correct arguments it ended up being pretty perfect for our purposes.
*/