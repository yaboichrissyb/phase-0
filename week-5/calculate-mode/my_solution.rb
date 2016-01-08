# Calculate the mode Pairing Challenge

# I worked on this challenge [ with: Chris Bunkers, Baron Kwan]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# It would be an array. List of objects wether they are numbers or strings.

# What is the output? (i.e. What should the code return?)
# It would also be an array but only the objects that repeated the most times.


# What are the steps needed to solve the problem?

# 1. Take each individual object and trasform it into the key of an empty hash. Set the default value of each object as 0.

# 2. For each time you get a key you add +1 to that key's value.

# 3. Create a new empty array

# 4. Push the most frequent key to that array. IF there are more than one object, push all of them.

# 5. Return that new array.



# 1. Initial Solution
=begin

def mode(array)
counter = Hash.new(0)
array.each do |i|
  counter[i] += 1
end
new_array = []
counter.each do |k, v|
  if v == counter.values.max
    new_array << k
  end
end
return new_array
end

p mode([1,1,2,2])

=end

# 3. Refactored Solution
def mode(array)
  counter = array.inject(Hash.new(0)) {|hash, key| hash[key] += 1; hash }
  new_array = []
  counter.each do |k, v|
    if v == counter.values.max
      new_array << k
    end
  end
  return new_array
end

# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?

We decided to use a hash since we figured we would want a unique key and value to store each object from the array as well as a value to count how many times that object is seen in the array.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

Yeah, I think practice makes perfect and this was a bit of a more straightforward challenge.  Though, I do still struggle with how to describe certain steps without relying on code lingo.

What issues/successes did you run into when translating your pseudocode to code?

I was actually pleasantly surprised with how smoothly we translated the pseudocode into an initial solution.  I also think our initial solution was relatively streamlined, which made going back and refactoring more of a challenge.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

We used the .each method and pushed each object meeting the mode criterium in the initial solution.  When we went back and refactored we tried using the .inject method which we both found more confusing but were able to work through using an example.  After that we went back and read a bit on stackoverflow and I think we both got a better understanding that way.
=end