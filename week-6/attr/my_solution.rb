
#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: name
# Output: greeting with name
# Steps:
# def namedata class with method to read back name
#   take name as instance variable, set default
#   def a greeting class with instance variable equal to new instance of previous namedata class
# def method for greeting that calls name method on new instance of namedata class within a string greeting
#   print greeting


class NameData
  attr_reader :name
  def initialize
    @name = "Chris"
  end
end

class Greetings
  def initialize
    @namedata = NameData.new
  end

  def hello
    puts "How are you doing, #{@namedata.name}?"
  end
end

greet = Greetings.new
greet.hello




# Reflection
=begin
Release 1
What are these methods doing?
They allow you to check and change the basic information of a personal profile.

How are they modifying or returning the value of instance variables?
They take an input as arguement and replace the default instance method with the input.

Release 2
What changed between the last release and this release?

We've added an attr_reader method for age

What was replaced?
The written definition of a method print out the age of the profile, the what_is_age method.

Is this code simpler than the last?
Yes, but could be simpler.

Release 3
What changed between the last release and this release?
We've added an attr_writer method for age

What was replaced?
The written definition of a method to change the age of the profile.

Is this code simpler than the last?
Yep.

Release 6
What is a reader method?
A reader method is a method that will read back the value of an instance variable when called.

What is a writer method?
A writer method is a method that will allow you to change the value of a given instance variable.

What do the attr methods do for you?
They allow you to define reader,writer and accessor methods in one line rather than three or more.

Should you always use an accessor to cover your bases? Why or why not.
Not if you know that you will not need to redefine the values of an instance variable or call back the given default value.  If you have every instance variable set as an accessor method or even a writer method, then all your variables are changeable when you may not want them to be.  This can make debugging more difficult and compromise the security of your data by allowing you to accidentally give methods access to the "inner workings" of other methods.

What is confusing to you about these methods?
It can be confusing to remember when to use the methods or to make sure to define instance variables across classes if you intend to pass the instances through.
=end