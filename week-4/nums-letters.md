#links
[Basic Math](https://github.com/yaboichrissyb/phase-0/blob/master/week-4/basic-math.rb)
[Defining Variables](https://github.com/yaboichrissyb/phase-0/blob/master/week-4/defining-variables.rb)
[Simple Strings](https://github.com/yaboichrissyb/phase-0/blob/master/week-4/simple-string.rb)

##Release 1
###What does 'puts' do?

'Puts' is an abbreviation for put string; meaning it writes onto the screen what you type after it. It's different from 'p' and 'print'.  "p" returns the evaluated code to the console and prints the output to the console.  'print' returns nil and prints the output to the console on the same line while 'puts' prints the output, returns nil on the next line, and then begins a new line.

###What is an integer?  What is a float?

An integer is any whole number without decimals (5, 300, -40, 0, etc.).  An integer can be positive or negative.  A float is a number value with decimals (5.0, 300.325, -40.001, 0.0, etc.).

###What is the difference between float and integer division?  How would you explain the difference to someonw who doesn't know anything about programming?

When you divide using integers, Ruby will only return an integer back.  This means, if you divide an odd number by 2, Ruby will round down to the nearest whole integer, it will not return a decimal value. For example, 13/2 would equal 6, even though it technically equals 6.5.
The usefulness of this characteristic of Ruby is not immediately apparent.  But, if you imagine that certain things simply are not divisible then it begins to make sense.  For example, if you have 21 people and you're trying to split them into two teams, you can't then have 10.5 people on each team.  One person simply isn't divisible by two.
Certain other units of measurement are similar.  You can't buy half of a car for half the price, or half a plane ticket.  Certain units are indivisible.
On the other hand, dividing with floats works essentially the same way you'd expect from any regular calculator.  If you enter values with decimals, Ruby will have no problem returning a value also with decimals.

##Release 2
###Average hours in a year, including leap-years:
````ruby
24*365.25
=> 8766.0
````
###Average minutes in a decade, including leap-years
````ruby
60*24*365.25*10
=> 5259600.0
````

##Release 7
###How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby handles the addition, subtraction, multiplication and division of numbers in much the same way as a regular calculator would, with a few exceptions.  To best understand these differences, it's useful to first understand the differences between integers, floats, and strings.  Integers are whole numbers without any decimals, floats are numbers with decimal values, and strings are any text or numbers within '' marks.  If you enter a number between '' marks, either as an integer or float, Ruby will read it as a string, meaning it will read each number much the same way it would a letter.  Another thing to remember is that Ruby will round down to the nearest whole integer on operations with whole integer inputs.

###What is the difference between integer and float division?
Integer division will only return integers, rounded down to the nearest whole number.  Ruby will not return a remainder, fraction or decimal point.  With floats, Ruby operates in the same way as any normal calculator would and returns decimal points when appropriate.  Ruby does not round answers when one or more inputs is a float.

###What are strings? Why and when would you use them?
Strings are simply groups of text characters (letters, symbols, punctuation, digits, spaces) in between aprostraphe('') marks.  Strings can be set as values for variables (names, hometowns, company, etc.) and can also be used in flow control to prompt responses from the user.  I'm sure there are further uses of strings that we will continue to learn about.

###What are local variables? Why and when would you use them?
Unlike global variables, local variables are only usable within the function/block/method in which it is defined.  Local variables can be used to give the same variable name different values across functions.

###How was this challenge? Did you get a good review of some of the basics?
I haven't used Ruby in a little while so this challenge was pretty good for reviewing some of the basics and getting me back in the Ruby frame of mind.