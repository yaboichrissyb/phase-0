# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself
# I spent [#] hours on this challenge.

# Pseudocode
=begin
Input: list of strings as lables for sides of die
output: IF roll is called, a random side
        IF sides is called, the total number of sides
Steps
1.  Def new Die class that takes labels as inputs, returns labels
2.  IF labels are empty returns argument error
3.  Def method sides equal to the size of labels array, return number of sides
4.  Def method roll
  -create rand btw 0(inclusive) and number of sides(exclusive)
  -use rand to randomly select index number of array
  -output string at that index number
=end
# Initial Solution
=begin
class Die
  def initialize(labels)
      raise ArgumentError.new("Labels array cannot be empty!") if labels.empty?
  end
  @labels = labels
end

  def sides
    @sides = @labels.size
  end

  def roll
    @labels[Random.new.rand(0...@sides)]
    end

end
=end


# Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError if labels.empty?
    @labels = labels
  end

  def sides
    @sides = @labels.length
  end

  def roll
    @labels[Random.new.rand(0...sides)]
  end

end

# Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

This die class had strings rather than integers as sides.  The basic logic was the same, I just had to change how the methods were defined.

What does this exercise teach you about making code that is easily changeable or modifiable?

If you make clean base code with the idea of using it as a template for modification in the future, you can pretty easily edit it to your liking.

What new methods did you learn when working on this challenge, if any?

None.  I did get some more experience with the rand method, though.

What concepts about classes were you able to solidify in this challenge?



=end