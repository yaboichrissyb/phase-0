# Drawer Debugger

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Initial Solution

class Drawer

attr_reader :contents

# Are there any more methods needed in this class?

def initialize
  @contents = []
  @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(*item) #what is `#pop` doing?
    @contents.pop
  end

  def dump  # what should this method return?
    puts "Your drawer is empty."
    @contents = []
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end

class Silverware
  attr_reader :type

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    puts "#{type} is now clean."
    @clean = true
  end
end




# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents

# What will you need here in order to remove a spoon? You may modify the driver code for this error.
spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)
raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
spoon.eat
puts spoon.clean_silverware #=> this should be false



# DRIVER TESTS GO BELOW THIS LINE






# Refactor
class Drawer

attr_reader :contents

def initialize
  @contents = []
  @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(*item)
    @contents.pop
  end

  def dump
    puts "Your drawer is empty."
    @contents = []
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end

class Silverware
  attr_reader :type

  def initialize(type)
    @type = type
    @clean = true
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    puts "#{type} is now clean."
    @clean = true
  end
end





# Reflection
=begin
What concepts did you review in this challenge?
This was definitely a good review of class definition, class methods, instance variables, attr constructors, and driver code in Ruby.  I've spent a lot of the beginning of this week in JavaScript, so this was a good way to get back into using Ruby.

What is still confusing to you about Ruby?
Some of the syntax still confuses me.  For example, the driver code on lines 99-101 had us stuck for such a long time until we tried defining a new variable called spoon and setting it equal to a new instance of silverware type spoon.  Before we did that, the .include? method on line 101 would not recognize spoon as a variable even though I thought it would take an object as an argument.  After we got it to work, this makes sense but before that I could not see how our code was wrong at all.

What are you going to study to get more prepared for Phase 1?
I definitley need to spend more time at the tail end of this week on Ruby review.  I need to review attr constructors, looping in Ruby and the differences in syntax for accessing specific array/hash objects in Ruby vs. JavaScript.  More generally, and I'm sure this will only happen over time, I need to become more comfortable rapidly switching between Ruby and JavaScript.  Right now, it's still sort of painful.
=end