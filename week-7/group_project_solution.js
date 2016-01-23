//Person 3: Translate pseudocode into code.
/*
1. Calculating a sum
Declare a function that takes two arguments
ADD the arguments together
RETURN the sum
*/
var sum = function(num1, num2) {
  return(num1 + num2);
}
console.log(sum(1,4))
/*
2. Calculating the sum of an array with an odd length
Declare a function that takes an array as an argument
IF the length of that array is NOT divisible by 2
  ADD all the numbers in the array together
  RETURN the sum
ELSE
  do nothing
*/

var oddSum = function(numArray) {
  var sum = 0;
  for (var i = 0; i < numArray.length; i++) {
    if (numArray.length % 2 !== 0) {
      sum += numArray[i];
  }
}
  return sum;
}

console.log(oddSum([1,2,3,4,5,6,7]))
/*
3. Calculating the sum of an array with an even length
Declare a function that takes an array as an argument
IF the length of that array is divisible by 2
  ADD all the numbers in the array together
  RETURN the sum
ELSE
  do nothing
*/

var evenSum = function(numArray) {
  var sum = 0;
  for (var i = 0; i < numArray.length; i++) {
    if (numArray.length % 2 === 0) {
      sum += numArray[i];
  }
}
  return sum;
}

console.log(evenSum([1,2,3,4,5,6]))

/*
4. Calculating a mean
Declare a function that takes an array as an argument
ADD the numbers together
DIVIDE the sum of those numbers by the number of elements in the array
RETURN the quotient
*/
var arrayMean = function(numArray) {
  var sum = 0;
  var mean = 0;
  for (var i = 0; i < numArray.length; i++) {
      sum += numArray[i];
      mean = sum/numArray.length;
  }
  return mean;
}

console.log(arrayMean([1,2,3,4,5,6,7]))

/*
5. Calculating the mean of an array with an odd length
Declare a function that takes an array as an argument
  IF the length of that array is NOT divisible by 2
    ADD the numbers together
    DIVIDE the sum of those numbers by the number of elements in the array
    RETURN the quotient
  ELSE do nothinng.
*/
var oddMean = function(numArray) {
  var sum = 0;
  var mean = 0;
  for (var i = 0; i < numArray.length; i++) {
    if (numArray.length % 2 !== 0) {
      sum += numArray[i];
      mean = sum/numArray.length;
  }
}
  return mean;
}

console.log(oddMean([1,2,3,4,5,6,7]))
/*
6. Calculating the mean of an array with an even length
Declare a function that takes an array as an argument
  IF the length of that array is divisible by 2
    ADD the numbers together
    DIVIDE the sum of those numbers by the number of elements in the array
    RETURN the quotient
  ELSE do nothinng.
*/

var evenMean = function(numArray) {
  var sum = 0;
  var mean = 0;
  for (var i = 0; i < numArray.length; i++) {
    if (numArray.length % 2 === 0) {
      sum += numArray[i];
      mean = sum/numArray.length;
  }
}
  return mean;
}

console.log(evenMean([1,2,3,4,5,6]))

/*
7. Calculate the median
  Declare a function that takes an array as an argument
  IF the length of that array is divisible by 2
    DIVIDE the length of the array by 2
    RETURN the element at that index of the array
  ELSE
    DIVIDE the length of the array by 2
    DIVIDE the length of the array by 2 and subtract 1
    RETURN the sum of the elements at those indeces of the array
*/

var median = function(numArray) {
  var length = numArray.length
    if (length % 2 === 0) {
      var medianIndex = length/2;
      return numArray[medianIndex];
  }
    else {
        var index1 = length/2;
        var index2 = index1 - 1;
    return (numArray[index1] + numArray[index2]);
}
}

console.log(median([1,2,3,4,5,6]))

/*
8.Calculate the median of an array with an odd number of elements
  Declare a function that takes an array as an argument
  IF the length of that array is NOT divisible by 2
    DIVIDE the length of the array by 2
    RETURN the element at that index of the array
  ELSE
    Do nothing
*/

var oddMedian = function(numArray) {
  var length = numArray.length
  var medianIndex = 0;
    if (length % 2 !== 0) {
      var medianIndex = ((length-1)/2);
      return numArray[medianIndex];
  }
}

console.log(oddMedian([1,2,3,4,5,6,7]))

/*
9. Calculate the median of an array with an even number of elements
  Declare a function that takes an array as an argument
    IF the length of that array is divisible by 2
      DIVIDE the length of the array by 2
      DIVIDE the length of the array by 2 and subtract 1
      RETURN the sum of the elements at those indeces of the array
    ELSE
      Do nothing
*/
var evenMedian = function(numArray) {
  var length = numArray.length;
  var index1 = 0;
  var index2 = 0;
    if (length % 2 === 0) {
       index1 = length/2;
       index2 = index1 - 1;
   var median = (numArray[index1] + numArray[index2]);
  }
  return median;
}

console.log(evenMedian([1,2,3,4,5,6]))