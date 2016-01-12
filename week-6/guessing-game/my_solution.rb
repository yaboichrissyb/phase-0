# Build a simple guessing game


# I worked on this challenge by myself
# I spent [#] hours on this challenge.

# Pseudocode
=begin
Input: The correct number to be guessed
Output:
-a symbol representing a high, low, or correct guess
-a true/false boolean cor solved method
Steps:
-get guess input
-make sure input is an integer
-check whether or not guess is same as answer
-IF high return :high
-IF low return : low
-IF correct return :correct
-when .solved? is called, return true if the answer was correct
-ELSE return false

=end

# Initial Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(your_guess)
    @guess = your_guess
    if your_guess > @answer
      @guess = :high
    elsif your_guess < @answer
      @guess = :low
    else
      @guess = :correct
    end
  end

  def solved?
    if @guess == :correct
      return true
    else
      return false
    end
  end
end



# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(your_guess)
    @guess = your_guess
    if your_guess > @answer
      :high
    elsif your_guess < @answer
      :low
    else
      :correct
    end
  end

  def solved?
    if @guess == @answer
      true
    else
      false
    end
  end
end
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables are like the data or the information the object can hold and know about itself.  Methods are the types of things that that object can do with this data.

When should you use instance variables? What do they do for you?

Instance variables let us define data that is bound to the entire instance of the class; the new object which we have created.  Local variables are only accessible within the method in which it is defined, its scope is much smaller.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control allows you to control the order in which the program executes your commands.  You should start with the most general or widely applicable criteria and move down to the least applicable/most specific.  In this way you are ensuring the computer does the least work necessary.  You can do this with the if elsif and else commands as well as a while for looping, when, and even a defining a unique case.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

Symbols can be useful in conjunction with hashes.  But, I honestly can't figure out at the moment why we used symbols instead of just strings, unless this challenge will tie into a future one.  I guess it's also slightly more streamlined since you don't have to puts a symbol and it's automatically stored in the symbol library for reference at a later point.
=end


