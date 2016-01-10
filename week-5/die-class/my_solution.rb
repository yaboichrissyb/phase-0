
# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent 1 hours on this challenge.

# 0. Pseudocode

# Input: roll command
# Output: random number 1-6
# Steps:
=begin
create die class, make available to all methods w/ instance var
allow min of 1 sides, require more than 1
def and return number of sides
return a roll of rand 1-sides
=end







# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    unless @sides >= 1
      raise ArgumentError.new("The die has to have at least one side")
    end
  end

  def sides
    @sides = sides
    return @sides
  end

  def roll
    return @sides.rand(0..@sides)
  end
end



# 3. Refactored Solution

class Die
def initialize (sides)
  @sides = sides
  unless @sides >= 1
    raise ArgumentError.new("The die has to have at least one sides")
  end
end

attr_reader :sides

def roll
  return rand(0..@sides)
end
end





# 4. Reflection
=begin
What is an ArgumentError and why would you use one?

An argument error states that an invalid argument/parameter has been passed to a function.  You might want to validate/check your input or to put a restriction on the input.  In this case, we wanted to restrict the input setting the value of the number of sides of the die to greater than or eqaul to one.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I used the random number generator and didn't really have an issue with it.

What is a Ruby class?

A class is a type of object in Ruby.  Fixnum, Integer, Numeric and Object are all types of classes, ascending from subclass to superclass.

Why would you use a Ruby class?

You can use a ruby class to quickly define a type of object with certain attributes and behaviors and then quickly create multiple versions of that class object, setting different arguments for each.  Here, we could create multiple die with different numbers of sides and roll them.

What is the difference between a local variable and an instance variable?

A local variable is a variable set in and callable within a certain scope, such as the method in which it is defined.  An instance variable is defined within an object and tied to that specific object.  Instance variables are essentially the things that the object knows about itself - it's state - and can have unique values for each object created of that class type.

Where can an instance variable be used?

An instance variable can only be used inside a class that has defined the instance variable as one of its properties.  You can refer to the instance variable using instance methods.  s
=end