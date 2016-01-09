# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? (i.e. What should the code return?) A positive integer separated by commas every three integers from the right.
# What are the steps needed to solve the problem?
#-count the number of digits in the integer
#-if less than 1000, convert to string and print
#-convert to string and create a new array
#-put a comma each three digits from the right
#-push to array and return array



# 1. Initial Solution
 #if input is less than 1000, convert to string and print
def separate_comma(pos_integer)
if pos_integer < 1000
  return pos_integer.to_s
end
#convert input to string, break to chars, and reverse, create new array
my_array = pos_integer.to_s.chars.reverse
#for every third indexed object, insert comma
counter = 0
for n in my_array[0..-1] do
  if counter > 0 && counter%3 == 0
    n.to_s<<','
  end
  counter += 1
end
#reverse and join array
return my_array.reverse.join
end



# 2. Refactored Solution
def separate_comma(pos_integer)
my_array = pos_integer.to_s.chars.reverse
  my_array[3..-1].each_with_index do |a, b|
    if b % 3 == 0
      a << ','
    end
  end
  return my_array.reverse.join
end



# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?

This was probably the most difficult part of the challenge for me.  I really had to think through each step and make sure I wasn't skipping important transformations.  I came up with a rough outline then saw that it wasn't detailed enough to translate into code so I went back and figured out what I was missing.

Was your pseudocode effective in helping you build a successful initial solution?

It was.  Otherwise I would have been completely lost.  I eventually knew what I had to do, I then just needed to figure out how to do it and with which methods.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

I used relatively new/foreign methods even in my initial solution, otherwise I'm not sure I would have been able to come up with any working solution.  My refactoring was really just finding a more efficient syntax that allowed me to skip a few lines of code.  I found these methods by skimming through Ruby-docs, looking for method names that sounded semantically like what I needed to get done.  I also took some extra time to look at a few just because I hadn't yet investigated them.  In the case of chars, this was a good approach.

How did you initially iterate through the data structure?

I set a counter then iterated through each object using an if/&& comparison that if evaluated to true pushed a comma to the right place in the array.

Do you feel your refactored solution is more readable than your initial solution? Why?

Yes, it's more concise/compacted but I was able to get rid of a lot of unnecessary code that, in my opinion, makes the code more complicated looking at first glance and requires more thought to translate to words.  I also avoided using the counter variable.  I've found I like to avoid unnecessary variables as much as possible since they tend to easily confuse me.
=end